/*
 * File:   masterMain.c
 * Author: david
 *
 * Created on October 17, 2021, 6:30 PM
 */

// PIC18F4431 Configuration Bit Settings

// 'C' source line config statements

// CONFIG1H
#pragma config OSC = RC         // Oscillator Selection bits (11XX External RC oscillator, CLKO function on RA6)
#pragma config FCMEN = ON       // Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor enabled)
#pragma config IESO = ON        // Internal External Oscillator Switchover bit (Internal External Switchover mode enabled)

// CONFIG2L
#pragma config PWRTEN = OFF     // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = ON       // Brown-out Reset Enable bits (Brown-out Reset enabled)
// BORV = No Setting

// CONFIG2H
#pragma config WDTEN = OFF      // Watchdog Timer Enable bit (WDT disabled (control is placed on the SWDTEN bit))
#pragma config WDPS = 32768     // Watchdog Timer Postscale Select bits (1:32768)
#pragma config WINEN = OFF      // Watchdog Timer Window Enable bit (WDT window disabled)

// CONFIG3L
#pragma config PWMPIN = OFF     // PWM output pins Reset state control (PWM outputs disabled upon Reset (default))
#pragma config LPOL = HIGH      // Low-Side Transistors Polarity (PWM0, 2, 4 and 6 are active-high)
#pragma config HPOL = HIGH      // High-Side Transistors Polarity (PWM1, 3, 5 and 7 are active-high)
#pragma config T1OSCMX = ON     // Timer1 Oscillator MUX (Low-power Timer1 operation when microcontroller is in Sleep mode)

// CONFIG3H
#pragma config FLTAMX = RC1     // FLTA MUX bit (FLTA input is multiplexed with RC1)
#pragma config SSPMX = RD1      // SSP I/O MUX bit (SCK/SCL clocks and SDA/SDI data are multiplexed with RC5 and RC4, respectively. SDO output is multiplexed with RC7.)
#pragma config PWM4MX = RB5     // PWM4 MUX bit (PWM4 output is multiplexed with RB5)
#pragma config EXCLKMX = RC3    // TMR0/T5CKI External clock MUX bit (TMR0/T5CKI external clock input is multiplexed with RC3)
#pragma config MCLRE = ON       // MCLR Pin Enable bit (Enabled)

// CONFIG4L
#pragma config STVREN = ON      // Stack Full/Underflow Reset Enable bit (Stack full/underflow will cause Reset)
#pragma config LVP = ON         // Low-Voltage ICSP Enable bit (Low-voltage ICSP enabled)

// CONFIG5L
#pragma config CP0 = OFF        // Code Protection bit (Block 0 (000200-000FFFh) not code-protected)
#pragma config CP1 = OFF        // Code Protection bit (Block 1 (001000-001FFF) not code-protected)
#pragma config CP2 = OFF        // Code Protection bit (Block 2 (002000-002FFFh) not code-protected)
#pragma config CP3 = OFF        // Code Protection bit (Block 3 (003000-003FFFh) not code-protected)

// CONFIG5H
#pragma config CPB = OFF        // Boot Block Code Protection bit (Boot Block (000000-0001FFh) not code-protected)
#pragma config CPD = OFF        // Data EEPROM Code Protection bit (Data EEPROM not code-protected)

// CONFIG6L
#pragma config WRT0 = OFF       // Write Protection bit (Block 0 (000200-000FFFh) not write-protected)
#pragma config WRT1 = OFF       // Write Protection bit (Block 1 (001000-001FFF) not write-protected)
#pragma config WRT2 = OFF       // Write Protection bit (Block 2 (002000-002FFFh) not write-protected)
#pragma config WRT3 = OFF       // Write Protection bit (Block 3 (003000-003FFFh) not write-protected)

// CONFIG6H
#pragma config WRTC = OFF       // Configuration Register Write Protection bit (Configuration registers (300000-3000FFh) not write-protected)
#pragma config WRTB = OFF       // Boot Block Write Protection bit (Boot Block (000000-0001FFh) not write-protected)
#pragma config WRTD = OFF       // Data EEPROM Write Protection bit (Data EEPROM not write-protected)

// CONFIG7L
#pragma config EBTR0 = OFF      // Table Read Protection bit (Block 0 (000200-000FFFh) not protected from table reads executed in other blocks)
#pragma config EBTR1 = OFF      // Table Read Protection bit (Block 1 (001000-001FFF) not protected from table reads executed in other blocks)
#pragma config EBTR2 = OFF      // Table Read Protection bit (Block 2 (002000-002FFFh) not protected from table reads executed in other blocks)
#pragma config EBTR3 = OFF      // Table Read Protection bit (Block 3 (003000-003FFFh) not protected from table reads executed in other blocks)

// CONFIG7H
#pragma config EBTRB = OFF      // Boot Block Table Read Protection bit (Boot Block (000000-0001FFh) not protected from table reads executed in other blocks)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#define _XTAL_FREQ 20000000


unsigned int count = 0;
unsigned char stringBuffer[20];
unsigned char speed = 0;


void swap(char *, char *);
char* reverse(char *, int , int );
void setupUART(void);
unsigned char rx_char(void);
void tx_char(char );
void setupTimer0(void);

void interrupt ISR() {
    if(INTCONbits.TMR0IF == 1) {
        count++;
        if (count == 1) {
            speed = PORTB;
            itoa(stringBuffer,speed,10);
            int i = 0;
            while (stringBuffer[i]) {
                tx_char(stringBuffer[i]);
                i++;
            }
            tx_char(0x0a);
            count = 0;
        }
    }
}

void main(void) {
    TRISB = 0xFF;
    INTCONbits.GIE = 1; INTCONbits.PEIE = 1; 
    setupUART();
    setupTimer0();
    while(1) {
        
    }
    return;
}

void setupTimer0(void) {
    INTCONbits.TMR0IE = 1;
    T0CONbits.T016BIT = 1; // 8bit Mode
    T0CONbits.T0CS = 0; // Internal CLK = 1/20MHz * 4
    
    // Set Prescaler to 1:256
    T0CONbits.PSA = 0;
    T0CONbits.T0PS2 = 0;
    T0CONbits.T0PS1 = 0;
    T0CONbits.T0PS0 = 0;
    TMR0 = 250;
    T0CONbits.TMR0ON = 1; // Turns on Timer0
}

void setupUART(void) {
    TRISCbits.RC6 = 0;       //direction of Tx and Rx pins
    TRISCbits.RC7 = 1;
    TXSTAbits.BRGH = 0; // Low speed Baud Rate
    TXSTAbits.SYNC = 0; // Asynchronous
    TXSTAbits.TXEN = 1; // Transmission Enable
    RCSTAbits.SPEN = 1; // Serial Port Enable
    RCSTAbits.CREN = 1; // Continuous Receive
    PIE1bits.RCIE = 1; // Enable Receive Interrupt
    PIE1bits.TXIE = 0; // Enable Transmit Interrupt
    SPBRG = 31;        // 9600 baud rate @20Mhz clock freq
}

char rx_char(void) {
    while(!RCIF);                   //Wait till RCREG is full
    return RCREG;                   //Return value in received data
}

void tx_char(char a) {
    TXREG=a;                        //Load TXREG register with data to be sent
    while(!TRMT);                   //Wait till transmission is complete
}
