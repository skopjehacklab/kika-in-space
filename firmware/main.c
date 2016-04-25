/*
 * Copyright 2011 Mika Tuupola
 * Copyright 2016 Damjan Georgievski
 * Copyright 2016 Aleksandar Lazarov
 *
 */

//#include <stdlib.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdio.h>

#include "uart.h"
#include "millis.h"

void io_ports_init(void) {
    DDRB = _BV(PORTB5);                    // set PORTB5 to an output
}

void blink_periodically(void) {
    static uint32_t prev_millis;
    uint32_t now = millis();
    if (now - prev_millis >= 500) {
        prev_millis = now;
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

    puts("Hello world!\r");

    int input;
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
