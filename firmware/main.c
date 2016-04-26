/*
 * Copyright 2016 Damjan Georgievski
 * Copyright 2016 Aleksandar Lazarov
 *
 */

#include <avr/interrupt.h>
#include <stdio.h>

#include "uart.h"
#include "millis.h"

#define LED PORTB5                         // pin13 on the arduino

void io_ports_init(void) {
    DDRB = _BV(LED);                       // LED is output
}

void blink_periodically(uint32_t now) {
    static uint32_t prev_millis;
    if (now - prev_millis >= 500) {
        prev_millis = now;
        PORTB ^= _BV(LED);                 // toggle LED
    }
}

int main(void) {
    cli();
    io_ports_init();
    uart_init();
    millis_init();
    stdout = &uart_output;
    stdin  = &uart_input;
    sei();

    puts("Hello world!\r");

    while (1) {
        uint32_t now = millis();
        blink_periodically(now);

        // send what's received - rx is from the gps module, tx goes to the modem and radio module
        int input = getchar();
        if (input != EOF) {
            putchar(input);
        }
    }
    // never here
    return 0;
}
