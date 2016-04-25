/* Based on Atmel Application Note AVR 306 */

#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdio.h>

#ifndef BAUD
#define BAUD 9600
#endif
#include <util/setbaud.h>

#ifndef UART_RX_BUFFER_SIZE
#define UART_RX_BUFFER_SIZE 64
#endif

#ifndef UART_TX_BUFFER_SIZE
#define UART_TX_BUFFER_SIZE 64
#endif

struct tx_ring {
    char buffer[UART_TX_BUFFER_SIZE];
    int start;
    int end;
};

struct rx_ring {
    char buffer[UART_RX_BUFFER_SIZE];
    int start;
    int end;
};

static struct tx_ring tx_buffer;
static struct rx_ring rx_buffer;


/* http://www.cs.mun.ca/~rod/Winter2007/4723/notes/serial/serial.html */

void uart_init(void) {

    tx_buffer.start = 0;
    tx_buffer.end   = 0;

    rx_buffer.start = 0;
    rx_buffer.end   = 0;

    UBRR0H = UBRRH_VALUE;
    UBRR0L = UBRRL_VALUE;

    UCSR0C = _BV(UCSZ01) | _BV(UCSZ00); /* 8-bit data */
    UCSR0B = _BV(RXEN0) | _BV(TXEN0);   /* Enable RX and TX */

    UCSR0B |= _BV(RXCIE0);              /* Enable RX complete interrupt */
}

int uart_putchar(char c, FILE *stream) {
    int write_pointer = (tx_buffer.end + 1) % UART_TX_BUFFER_SIZE;

    if (write_pointer != tx_buffer.start){
        tx_buffer.buffer[tx_buffer.end] = c;
        tx_buffer.end = write_pointer;

        /* Data available. Enable the transmit interrupt for serial port 0. */
        UCSR0B |= _BV(UDRIE0);
    }

    return 0;
}

int uart_getchar(FILE *stream) {
    if (rx_buffer.start == rx_buffer.end) {
        return EOF;
    }

    int read_pointer = rx_buffer.start;

    rx_buffer.start = (rx_buffer.start + 1) % UART_RX_BUFFER_SIZE;
    return rx_buffer.buffer[read_pointer];
}


FILE uart_output = FDEV_SETUP_STREAM(uart_putchar, NULL, _FDEV_SETUP_WRITE);
FILE uart_input = FDEV_SETUP_STREAM(NULL, uart_getchar, _FDEV_SETUP_READ);


ISR(USART_RX_vect) {
    int write_pointer = (rx_buffer.end + 1) % UART_RX_BUFFER_SIZE;

    /* Add next byte to ringbuffer if it has space available. */
    if (write_pointer != rx_buffer.start){
        rx_buffer.buffer[rx_buffer.end] = UDR0;
        rx_buffer.end = write_pointer;
    }
}

ISR(USART_UDRE_vect){
    /* Transmit next byte if data available in ringbuffer. */
    if (tx_buffer.start != tx_buffer.end) {
        UDR0 = tx_buffer.buffer[tx_buffer.start];
        tx_buffer.start = (tx_buffer.start + 1) % UART_TX_BUFFER_SIZE;
    } else {
        /* Nothing to send. Disable the transmit interrupt for serial port 0. */
        UCSR0B &= ~_BV(UDRIE0);
    }
}
