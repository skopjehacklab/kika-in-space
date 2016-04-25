/*
 * Copyright 2011 Mika Tuupola
 * Copyright 2016 Damjan Georgievski
 *
 */

//#include <stdlib.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdio.h>

#include "uart.h"

volatile uint32_t millis;

void io_ports_init(void) {
    DDRB = _BV(PORTB5);                    // set PORTB5 to an output
}

ISR(TIMER0_OVF_vect) {                     // Interrupt service routine
    millis++;
    TCNT0 = 256 - 62;
}

void millis_init(void) {
    TCCR0B |= (1 << CS02);                 // 256 prescaler ~ 62.5Khz / 16µs
    TIMSK0 |= (1 << TOIE0);                // overflow interrupt enabled
    TCNT0 = 256 - 62;                      // overflow after 62 * 16µs ~ 0.000992 s
    millis = 0;
}

void blink_periodically(void) {
    static uint32_t prev_millis;
    if (millis - prev_millis >= 500) {
        prev_millis = millis;
        PORTB ^= _BV(PORTB5);              // toggle portb5
    }
}

int main(void) {
    cli();
    millis_init();
    io_ports_init();
    uart_init();
    stdout = &uart_output;
    stdin  = &uart_input;
    sei();

    puts("Hello world!");

    char input;
    while (1) {
        blink_periodically();

        // send what's received - rx is from the gps module, tx goes to the TX1 module
        input = getchar();
        if (input != EOF) {
            putchar(input);
        }
    }

    return 0;
}
