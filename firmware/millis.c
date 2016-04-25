/*
 * Copyright 2011 Mika Tuupola
 * Copyright 2016 Damjan Georgievski
 *
 */

#include <avr/interrupt.h>
#include "millis.h"

volatile uint32_t _millis;

ISR(TIMER0_OVF_vect) {                     // Interrupt service routine
    _millis++;
}

void millis_init(void) {
    TCCR0B |= (1 << CS01) | (1 << CS00);   // 64 prescaler ~ 250Khz ie 4µs
    TIMSK0 |= (1 << TOIE0);                // overflow interrupt enabled
    OCR0A = 250;                           // overflow after 250 * 4µs ~ 0.001s
    _millis = 0;
}

extern inline uint32_t millis(void) {
    return _millis;
}
