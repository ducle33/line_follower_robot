/*
 * File:   motorMain.c
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
#pragma config SSPMX = RC7      // SSP I/O MUX bit (SCK/SCL clocks and SDA/SDI data are multiplexed with RC5 and RC4, respectively. SDO output is multiplexed with RC7.)
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

#define _XTAL_FREQ 20000000 // Define oscillator frequency
#define ENCODER_PPR 1024 // PPR of Encoder on the motor
#define TIMER5_PRESCALE 1 // Timer5 prescaler
#define QEI_X_UPDATE 4 // Define the QEI mode of operation.
#define VELOCITY_PULSE_DECIMATION 16
#define INSTRUCTION_CYCLE _XTAL_FREQ/4

// RPM_CONSTANT_QEI = ((INSTRUCTION_CYCLE)/
// (ENCODER_PPR*QEI_X_UPDATE*VELOCITY_PULSE_DECIMATION*TIMER5_PRESCALE)) * 60; //In RPM

// 200, 8225 rpm,

void setupQEI(void);
void setupTimer5(void);
void setupTimer0(void);
void SPI_Init_Slave();
void SPI_Init_Master();
void SPI_Write(unsigned char);
unsigned char SPI_Read();

unsigned char w = "u";
unsigned int count = 0;

void interrupt ISR() {
    if(INTCONbits.TMR0IF == 1) {
        count++;
        if (count == 60000) {
            PORTBbits.RB6 = 1 - PORTBbits.RB6;
            SPI_Write(w);
        }
    }
}

void main(void) {
    unsigned long RPM_CONSTANT_QEI = 93750;
    INTCONbits.GIE = 1; INTCONbits.PEIE = 1;
    setupQEI();
    setupTimer5();
    SPI_Init_Slave();
    while(1) {
        
    }
    return;
}


void setupQEI(void) {
    DFLTCONbits.FLT3EN = 1;
    DFLTCONbits.FLT2EN = 1;
    DFLTCONbits.FLTCK = 0;
    
    QEICONbits.nVELM = 0;
    QEICONbits.QERR = 0;
    // x4 Mode, resets on POSCNT = MAXCNT
    QEICONbits.QEIM0 = 0;
    QEICONbits.QEIM1 = 1;
    QEICONbits.QEIM2 = 1;
    // Velocity Pulse Reduction = 4
    QEICONbits.PDEC0 = 1;
    QEICONbits.PDEC1 = 0;
    
}

void setupTimer0(void) {
    INTCONbits.TMR0IE = 1;
    
    
    T0CONbits.T016BIT = 1; // 8bit Mode
    T0CONbits.T0CS = 0; // Internal CLK = 1/20MHz * 4
    
    // Set Prescaler to 1:256
    T0CONbits.PSA = 0;
    T0CONbits.T0PS2 = 1;
    T0CONbits.T0PS1 = 0;
    T0CONbits.T0PS0 = 1;
    
    T0CONbits.TMR0ON = 1; // Turns on Timer0
    TMR0 = 0;
}

void setupTimer5(void) {
    T5CONbits.TMR5CS = 0;
    T5CONbits.T5PS0 = 0;
    T5CONbits.T5PS1 = 0;
    T5CONbits.T5MOD = 0;
    TMR5 = 0;
    T5CONbits.TMR5ON = 1;
}

void SPI_Init_Master() {
    /* PORT definition for SPI pins*/    
    TRISDbits.TRISD2 = 1;	/* RD2 as input(SDI) */
    TRISDbits.TRISD3 = 0;	/* RD3 as output(SCK) */
    TRISDbits.TRISD1 = 0;	/* RD1 as output(SDO) */
    
    /* To initialize SPI Communication configure following Register*/
    CS = 1;
    SSPSTAT=0x40;		/* Data change on rising edge of clk,BF=0*/
    SSPCON1=0x24;		/* Master mode,Serial enable,
				idle state low for clk, fosc/64 */ 
    PIR1bits.SSPIF=0;

    /* Disable the ADC channel which are on for multiplexed pin
    when used as an input */    
    ADCON0=0;			/* This is for de-multiplexed the SCL
				and SDI from analog pins*/
    ADCON1=0x0F;		/* This makes all pins as digital I/O */    
}

void SPI_Init_Slave() {
    /* PORT definition for SPI pins*/    
    TRISCbits.TRISC4 = 1;	/* RC4 as input(SDI) */
    TRISCbits.TRISC5 = 1;	/* RC5 as output(SCK) */
    TRISCbits.TRISC6 = 1;	/* RC6 as a output(SS') */
    TRISCbits.TRISC7 = 0;	/* RC7 as output(SDO) */

    /* To initialize SPI Communication configure following Register*/
    CS = 1;
    SSPSTAT=0x40;		/* Data change on rising edge of clk , BF=0*/
    SSPCON1=0x24;		/* Slave mode,Serial enable, idle state 
				high for clk */ 
    PIR1bits.SSPIF=0;

    /* Disable the ADC channel which are on for multiplexed pin 
    when used as an input */    
    ADCON0=0;			/* This is for de-multiplexed the SCL
				and SDI from analog pins*/
    ADCON1=0x0F;		/* This makes all pins as digital I/O */    
}

void SPI_Write(unsigned char x) {
    unsigned char data_flush;
    SSPBUF=x;			/* Copy data in SSBUF to transmit */

    while(!PIR1bits.SSPIF);	/* Wait for complete 1 byte transmission */
    PIR1bits.SSPIF=0;		/* Clear SSPIF flag */
    data_flush=SSPBUF;		/* Flush the data */
}

unsigned char SPI_Read() {    
    SSPBUF=0xff;		/* Copy flush data in SSBUF */
    while(!PIR1bits.SSPIF);	/* Wait for complete 1 byte transmission */
    PIR1bits.SSPIF=0;
    return(SSPBUF);		/* Return received data.*/   
}
