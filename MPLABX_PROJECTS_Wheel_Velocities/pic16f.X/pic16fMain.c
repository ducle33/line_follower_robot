/*
 * File:   pic16fMain.c
 * Author: david
 *
 * Created on October 23, 2021, 11:56 AM
 */

// PIC16F877A Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = ON       // Brown-out Reset Enable bit (BOR enabled)
#pragma config LVP = ON         // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3/PGM pin has PGM function; low-voltage programming enabled)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>

unsigned char timer0Count = 0;

void interrupt timer_0() {
    if(INTCONbits.TMR0IF == 1) {
        timer0Count++;
        INTCONbits.TMR0IF = 0;
    }
}

void main(void) {
    
    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
    INTCONbits.TMR0IE = 1;
    
    OPTION_REG = 0x07;
    TMR0 = 59;
    
    TRISB0 = 0;
    
    while(1) {
        if(timer0Count == 0)
            PORTBbits.RB0 = 1;
        if(timer0Count == 100)
            PORTBbits.RB0 = 0;
        if(timer0Count == 200)
            timer0Count = 0;
    }
    return;
}


// Iterative function to implement `itoa()` function in C
//char* itoa(int value, char* buffer, int dividend) {
//    // invalid input
//    if (dividend < 2 || dividend > 32) {
//        return buffer;
//    }
// 
//    // consider the absolute value of the number
//    int n = abs(value);
// 
//    int i = 0;
//    while (n)
//    {
//        int r = n % dividend;
// 
//        if (r >= 10) {
//            buffer[i++] = 65 + (r - 10);
//        }
//        else {
//            buffer[i++] = 48 + r;
//        }
// 
//        n = n / dividend;
//    }
// 
//    // if the number is 0
//    if (i == 0) {
//        buffer[i++] = '0';
//    }
// 
//    // If the base is 10 and the value is negative, the resulting string
//    // is preceded with a minus sign (-)
//    // With any other base, value is always considered unsigned
//    if (value < 0 && dividend == 10) {
//        buffer[i++] = '-';
//    }
// 
//    buffer[i] = '\0'; // null terminate string
// 
//    // reverse the string and return it
//    return reverse(buffer, 0, i - 1);
//}