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
#include <math.h>
#include <ctype.h>
#define _XTAL_FREQ 20000000


unsigned int count = 0;
int speedRef1 = 180;
int speedRef2 = 180;
unsigned char vel = 0;
unsigned char omega = 0;
float r = 0.0425;
float b = 0.172; 
unsigned char c = 127; 
float err2=0, integral=0, preError=0, omega_ref=0, angleErr2=0;
float Kp=30, Ki=0, Kd=0.00000, Kg = 1, integral_max = 0.36, omega_max = 10; // 40 2000
float v_ref=0.8;

void swap(char *, char *);
char* reverse(char *, int , int );
void setupUART(void);
unsigned char rx_char(void);
void tx_char(char );
void setupTimer0(void);
void setupTimer1(void);
void setupTimer5(void);
void SPI_Init_Slave();
void SPI_Init_Master();
void SPI_Write(unsigned char);
unsigned char SPI_Read();

signed char WriteSPI(unsigned char data_out, char a) {
    if(a==1)
        PORTCbits.RC1 = 0;
    if(a==2)
        PORTCbits.RC2 = 0;
    unsigned char TempVar;
    TempVar = SSPBUF;           // Clears BF
    PIR1bits.SSPIF = 0;         // Clear interrupt flag
    SSPCON1bits.WCOL = 0;            //Clear any previous write collision
    SSPBUF = data_out;           // write byte to SSPBUF register
    if (SSPCON1 & 0x80)        // test if write collision occurred
        return -1;              // if WCOL bit is set return negative #
    else
        while( !PIR1bits.SSPIF );  // wait until bus cycle complete
    if(a==1)
        PORTCbits.RC1 = 1;
    if(a==2)
        PORTCbits.RC2 = 1;
    return 0;                // if WCOL bit is not set return non-negative#
}

unsigned char ReadSPI(int a) {
    if(a==1)
        PORTCbits.RC1 = 0;
    if(a==2)
        PORTCbits.RC2 = 0;
    unsigned char TempVar;
    TempVar = SSPBUF;        // Clear BF
    PIR1bits.SSPIF = 0;      // Clear interrupt flag
    SSPBUF = 0x00;           // initiate bus cycle
    while(!PIR1bits.SSPIF);  // wait until cycle complete
    if(a==1)
        PORTCbits.RC1 = 1;
    if(a==2)
        PORTCbits.RC2 = 1;
    return (SSPBUF);       // return with byte read
}

//void UARTM1(void) {
//    unsigned char tempM1;
//    tempM1 = ReadSPI(1);
//    if ((int)tempM1==0 || (int)tempM1==(int)speedRef1)
//        speedM1 = speedM1;
//    else
//        speedM1 = (int)tempM1;
//    tx_char(0x41);
//    itoa(stringBuffer,speedM1,10);
//    int i = 0;
//    while (stringBuffer[i]) {
//        tx_char(stringBuffer[i]);
//        i++;
//    }
//    tx_char(0x0a);
//}

//void UARTM2(void) {
//    unsigned char tempM2;
//    tempM2 = ReadSPI(2);
//    if ((int)tempM2==0 || (int)tempM2==(int)speedRef2)
//        speedM2 = speedM2;
//    else
//        speedM2 = (int)tempM2;
//    tx_char(0x42);
//    itoa(stringBuffer,speedM2,10);
//    int i = 0;
//    while (stringBuffer[i]) {
//        tx_char(stringBuffer[i]);
//        i++;
//    }
//    tx_char(0x0a);
//}

void gets_UART(char string[]) {
    for(int i=0;i++;i<4) {
        string[i] = rx_char();
    }
}

void interrupt ISR() {
    
    if(RCIF == 1) {
        c = rx_char();
        PORTDbits.RD0 = 1 - PORTDbits.RD0; 
    }
    
    if(INTCONbits.TMR0IF == 1) {
        count++;
        if(count==1) {
//            UARTM2();
//            UARTM1();
            
//            c = 0;
            err2 = (float)c*0.08/255 - 0.04;
            
//            err2 = (float)c*0.36/255 - 0.18;
            if (err2>=0) {
                PORTDbits.RD6 = 1;
                PORTDbits.RD7 = 0;
            }
            if (err2<0) {
                PORTDbits.RD6 = 0;
                PORTDbits.RD7 = 1;
            }
            integral = integral + err2;
            if (integral > integral_max)
                integral = integral_max;
            if (integral < -integral_max)
                integral = -integral_max;
//            angleErr2 = err2*1.570796/0.1;
            omega_ref = Kg*(Kp*err2 + Ki*integral + (err2 - preError)*Kd);
            
//            omega_ref = Kg*(Kp*err2*exp(15*abs(err2))*sin(angleErr2) + Ki*integral + (err2 - preError)*Kd);
            if (omega_ref > omega_max)
                omega_ref = omega_max;
            if (omega_ref < -omega_max)
                omega_ref = -omega_max;
            preError = err2;
            speedRef1 = (int)((v_ref/r - omega_ref)*9.549296);
            speedRef2 = (int)((v_ref/r + omega_ref)*9.549296);
            
            if(speedRef1 > 255)
                speedRef1 = 255;
            if(speedRef1 < 0)
                speedRef1 = 0;
            if(speedRef2 > 255)
                speedRef2 = 255;
            if(speedRef2 < 0)
                speedRef2 = 0;
            
            PORTB = speedRef1;

            WriteSPI(speedRef1,1);
            WriteSPI(speedRef2,2);
            count=0;
        }
    }
}

void main(void) {
    TRISDbits.RD4 = 0;
    TRISDbits.RD5 = 0;
    TRISDbits.RD6 = 0;
    TRISDbits.RD7 = 0;
    TRISDbits.RD0 = 0;
    
    TRISB = 0;
    
    PORTDbits.RD0 = 0;
    PORTDbits.RD4 = 0;
    PORTDbits.RD5 = 0;
    PORTDbits.RD6 = 0;
    PORTDbits.RD7 = 0;
    
    INTCONbits.GIE = 1; INTCONbits.PEIE = 1; 
    setupUART();
    setupTimer0();
    TRISCbits.RC2 = 0;
    PORTCbits.RC2 = 1;
    TRISCbits.RC1 = 0;
    PORTCbits.RC1 = 1;
    SPI_Init_Master();
    
    while(1) {
    }
    return;
}

void setupTimer0(void) {
    INTCONbits.TMR0IE = 1;
    T0CONbits.T016BIT = 1; // 8bit Mode
    T0CONbits.T0CS = 0; // Internal CLK = 1/20MHz * 4
    
    // Set Prescaler to 1:256
    // Sampling time = (255-60)*4/20*10^-6*256 = 10ms ~ 100Hz
    T0CONbits.PSA = 0;
    T0CONbits.T0PS2 = 1;
    T0CONbits.T0PS1 = 1;
    T0CONbits.T0PS0 = 1;
    TMR0 = 60;
    T0CONbits.TMR0ON = 1; // Turns on Timer0
}

void setupTimer1(void) {
    PIE1bits.TMR1IE = 1; // Enable Timer 1 Interrupt
    TMR1 = 0;
    T1CONbits.RD16 = 1; // 16bit Mode
    T1CONbits.TMR1CS = 0; // Internal CLK = 1/20MHz * 4
    // Set Prescaler to 1:8
    T1CONbits.T1CKPS0 = 0;
    T1CONbits.T1CKPS1 = 0;
    
    T1CONbits.TMR1ON = 1; // Turn on Timer1
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

unsigned char rx_char(void) {
    while(!RCIF);                   //Wait till RCREG is full
    return RCREG;                   //Return value in received data
}

void tx_char(char a) {
    TXREG=a;                        //Load TXREG register with data to be sent
    while(!TRMT);                   //Wait till transmission is complete
}

void SPI_Init_Master() {
    PIE1bits.SSPIE = 1;
    IPR1bits.SSPIP = 1;
    
    /* PORT definition for SPI pins*/    
    TRISDbits.TRISD2 = 1;	/* RD2 as input(SDI) */
    TRISDbits.TRISD3 = 0;	/* RD3 as output(SCK) */
    TRISDbits.TRISD1 = 0;	/* RD1 as output(SDO) */
    
    /* To initialize SPI Communication configure following Register*/
    CS = 1;
    SSPSTAT=0x40;		/* Data change on rising edge of clk,BF=0*/
    SSPCON1=0x20;		/* Master mode,Serial enable, 
                          * idle state low for clk, fosc/4 */ 
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
    PIE1bits.SSPIE=1;

    /* Disable the ADC channel which are on for multiplexed pin 
    when used as an input */    
    ADCON0=0;			/* This is for de-multiplexed the SCL
				and SDI from analog pins*/
    ADCON1=0x0F;		/* This makes all pins as digital I/O */    
}
