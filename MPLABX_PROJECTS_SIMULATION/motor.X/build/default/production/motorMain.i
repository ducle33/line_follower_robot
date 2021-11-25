
# 1 "motorMain.c"


# 13
#pragma config OSC = RC
#pragma config FCMEN = ON
#pragma config IESO = ON


#pragma config PWRTEN = OFF
#pragma config BOREN = ON



#pragma config WDTEN = OFF
#pragma config WDPS = 32768
#pragma config WINEN = OFF


#pragma config PWMPIN = OFF
#pragma config LPOL = HIGH
#pragma config HPOL = HIGH
#pragma config T1OSCMX = ON


#pragma config FLTAMX = RC1
#pragma config SSPMX = RC7
#pragma config PWM4MX = RB5
#pragma config EXCLKMX = RC3
#pragma config MCLRE = ON


#pragma config STVREN = ON
#pragma config LVP = ON


#pragma config CP0 = OFF
#pragma config CP1 = OFF
#pragma config CP2 = OFF
#pragma config CP3 = OFF


#pragma config CPB = OFF
#pragma config CPD = OFF


#pragma config WRT0 = OFF
#pragma config WRT1 = OFF
#pragma config WRT2 = OFF
#pragma config WRT3 = OFF


#pragma config WRTC = OFF
#pragma config WRTB = OFF
#pragma config WRTD = OFF


#pragma config EBTR0 = OFF
#pragma config EBTR1 = OFF
#pragma config EBTR2 = OFF
#pragma config EBTR3 = OFF


#pragma config EBTRB = OFF

# 18 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8\pic\include\xc.h"
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 13 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\xc8debug.h"
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);

# 52 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8\pic\include\proc\pic18f4431.h"
extern volatile unsigned char DFLTCON __at(0xF60);

asm("DFLTCON equ 0F60h");


typedef union {
struct {
unsigned FLTCK :3;
unsigned FLT1EN :1;
unsigned FLT2EN :1;
unsigned FLT3EN :1;
unsigned FLT4EN :1;
};
struct {
unsigned FLTCK0 :1;
unsigned FLTCK1 :1;
unsigned FLTCK2 :1;
};
} DFLTCONbits_t;
extern volatile DFLTCONbits_t DFLTCONbits __at(0xF60);

# 116
extern volatile unsigned char CAP3CON __at(0xF61);

asm("CAP3CON equ 0F61h");


typedef union {
struct {
unsigned CAP3M :4;
unsigned :1;
unsigned CAP3TMR :1;
unsigned CAP3REN :1;
};
struct {
unsigned CAP3M0 :1;
unsigned CAP3M1 :1;
unsigned CAP3M2 :1;
unsigned CAP3M3 :1;
};
} CAP3CONbits_t;
extern volatile CAP3CONbits_t CAP3CONbits __at(0xF61);

# 175
extern volatile unsigned char CAP2CON __at(0xF62);

asm("CAP2CON equ 0F62h");


typedef union {
struct {
unsigned CAP2M :4;
unsigned :1;
unsigned CAP2TMR :1;
unsigned CAP2REN :1;
};
struct {
unsigned CAP2M0 :1;
unsigned CAP2M1 :1;
unsigned CAP2M2 :1;
unsigned CAP2M3 :1;
};
} CAP2CONbits_t;
extern volatile CAP2CONbits_t CAP2CONbits __at(0xF62);

# 234
extern volatile unsigned char CAP1CON __at(0xF63);

asm("CAP1CON equ 0F63h");


typedef union {
struct {
unsigned CAP1M :4;
unsigned :1;
unsigned CAP1TMR :1;
unsigned CAP1REN :1;
};
struct {
unsigned CAP1M0 :1;
unsigned CAP1M1 :1;
unsigned CAP1M2 :1;
unsigned CAP1M3 :1;
};
} CAP1CONbits_t;
extern volatile CAP1CONbits_t CAP1CONbits __at(0xF63);

# 293
extern volatile unsigned char CAP3BUFL __at(0xF64);

asm("CAP3BUFL equ 0F64h");


extern volatile unsigned char MAXCNTL __at(0xF64);

asm("MAXCNTL equ 0F64h");




extern volatile unsigned char CAP3BUFH __at(0xF65);

asm("CAP3BUFH equ 0F65h");


extern volatile unsigned char MAXCNTH __at(0xF65);

asm("MAXCNTH equ 0F65h");




extern volatile unsigned char CAP2BUFL __at(0xF66);

asm("CAP2BUFL equ 0F66h");


extern volatile unsigned char POSCNTL __at(0xF66);

asm("POSCNTL equ 0F66h");




extern volatile unsigned char CAP2BUFH __at(0xF67);

asm("CAP2BUFH equ 0F67h");


extern volatile unsigned char POSCNTH __at(0xF67);

asm("POSCNTH equ 0F67h");




extern volatile unsigned char CAP1BUFL __at(0xF68);

asm("CAP1BUFL equ 0F68h");


extern volatile unsigned char VELRL __at(0xF68);

asm("VELRL equ 0F68h");




extern volatile unsigned char CAP1BUFH __at(0xF69);

asm("CAP1BUFH equ 0F69h");


extern volatile unsigned char VELRH __at(0xF69);

asm("VELRH equ 0F69h");




extern volatile unsigned char OVDCONS __at(0xF6A);

asm("OVDCONS equ 0F6Ah");


typedef union {
struct {
unsigned POUT :8;
};
struct {
unsigned POUT0 :1;
unsigned POUT1 :1;
unsigned POUT2 :1;
unsigned POUT3 :1;
unsigned POUT4 :1;
unsigned POUT5 :1;
unsigned POUT6 :1;
unsigned POUT7 :1;
};
} OVDCONSbits_t;
extern volatile OVDCONSbits_t OVDCONSbits __at(0xF6A);

# 435
extern volatile unsigned char OVDCOND __at(0xF6B);

asm("OVDCOND equ 0F6Bh");


typedef union {
struct {
unsigned POVD :8;
};
struct {
unsigned POVD0 :1;
unsigned POVD1 :1;
unsigned POVD2 :1;
unsigned POVD3 :1;
unsigned POVD4 :1;
unsigned POVD5 :1;
unsigned POVD6 :1;
unsigned POVD7 :1;
};
} OVDCONDbits_t;
extern volatile OVDCONDbits_t OVDCONDbits __at(0xF6B);

# 505
extern volatile unsigned char FLTCONFIG __at(0xF6C);

asm("FLTCONFIG equ 0F6Ch");


typedef union {
struct {
unsigned FLTAEN :1;
unsigned FLTAMOD :1;
unsigned FLTAS :1;
unsigned FLTCON :1;
unsigned FLTBEN :1;
unsigned FLTBMOD :1;
unsigned FLTBS :1;
unsigned BRFEN :1;
};
} FLTCONFIGbits_t;
extern volatile FLTCONFIGbits_t FLTCONFIGbits __at(0xF6C);

# 567
extern volatile unsigned char DTCON __at(0xF6D);

asm("DTCON equ 0F6Dh");


typedef union {
struct {
unsigned DTA :6;
unsigned DTAPS :2;
};
struct {
unsigned DT0 :1;
unsigned DT1 :1;
unsigned DT2 :1;
unsigned DT3 :1;
unsigned DT4 :1;
unsigned DT5 :1;
unsigned DTPS0 :1;
unsigned DTPS1 :1;
};
struct {
unsigned DTA0 :1;
unsigned DTA1 :1;
unsigned DTA2 :1;
unsigned DTA3 :1;
unsigned DTA4 :1;
unsigned DTA5 :1;
unsigned DTAPS0 :1;
unsigned DTAPS1 :1;
};
} DTCONbits_t;
extern volatile DTCONbits_t DTCONbits __at(0xF6D);

# 693
extern volatile unsigned char PWMCON1 __at(0xF6E);

asm("PWMCON1 equ 0F6Eh");


typedef union {
struct {
unsigned OSYNC :1;
unsigned UDIS :1;
unsigned :1;
unsigned SEVTDIR :1;
unsigned SEVOPS :4;
};
struct {
unsigned :4;
unsigned SEVOPS0 :1;
unsigned SEVOPS1 :1;
unsigned SEVOPS2 :1;
unsigned SEVOPS3 :1;
};
} PWMCON1bits_t;
extern volatile PWMCON1bits_t PWMCON1bits __at(0xF6E);

# 759
extern volatile unsigned char PWMCON0 __at(0xF6F);

asm("PWMCON0 equ 0F6Fh");


typedef union {
struct {
unsigned PMOD :4;
unsigned PWMEN :3;
};
struct {
unsigned PMOD0 :1;
unsigned PMOD1 :1;
unsigned PMOD2 :1;
unsigned PMOD3 :1;
unsigned PWMEN0 :1;
unsigned PWMEN1 :1;
unsigned PWMEN2 :1;
};
} PWMCON0bits_t;
extern volatile PWMCON0bits_t PWMCON0bits __at(0xF6F);

# 829
extern volatile unsigned char SEVTCMPH __at(0xF70);

asm("SEVTCMPH equ 0F70h");




extern volatile unsigned char SEVTCMPL __at(0xF71);

asm("SEVTCMPL equ 0F71h");




extern volatile unsigned char PDC3H __at(0xF72);

asm("PDC3H equ 0F72h");




extern volatile unsigned char PDC3L __at(0xF73);

asm("PDC3L equ 0F73h");




extern volatile unsigned char PDC2H __at(0xF74);

asm("PDC2H equ 0F74h");




extern volatile unsigned char PDC2L __at(0xF75);

asm("PDC2L equ 0F75h");




extern volatile unsigned char PDC1H __at(0xF76);

asm("PDC1H equ 0F76h");




extern volatile unsigned char PDC1L __at(0xF77);

asm("PDC1L equ 0F77h");




extern volatile unsigned char PDC0H __at(0xF78);

asm("PDC0H equ 0F78h");




extern volatile unsigned char PDC0L __at(0xF79);

asm("PDC0L equ 0F79h");




extern volatile unsigned char PTPERH __at(0xF7A);

asm("PTPERH equ 0F7Ah");




extern volatile unsigned char PTPERL __at(0xF7B);

asm("PTPERL equ 0F7Bh");




extern volatile unsigned char PTMRH __at(0xF7C);

asm("PTMRH equ 0F7Ch");




extern volatile unsigned char PTMRL __at(0xF7D);

asm("PTMRL equ 0F7Dh");




extern volatile unsigned char PTCON1 __at(0xF7E);

asm("PTCON1 equ 0F7Eh");


typedef union {
struct {
unsigned :6;
unsigned PTDIR :1;
unsigned PTEN :1;
};
} PTCON1bits_t;
extern volatile PTCON1bits_t PTCON1bits __at(0xF7E);

# 954
extern volatile unsigned char PTCON0 __at(0xF7F);

asm("PTCON0 equ 0F7Fh");


typedef union {
struct {
unsigned PTMOD :2;
unsigned PTCKPS :2;
unsigned PTOPS :4;
};
struct {
unsigned PTMOD0 :1;
unsigned PTMOD1 :1;
unsigned PTCKPS0 :1;
unsigned PTCKPS1 :1;
unsigned PTOPS0 :1;
unsigned PTOPS1 :1;
unsigned PTOPS2 :1;
unsigned PTOPS3 :1;
};
} PTCON0bits_t;
extern volatile PTCON0bits_t PTCON0bits __at(0xF7F);

# 1036
extern volatile unsigned char PORTA __at(0xF80);

asm("PORTA equ 0F80h");


typedef union {
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
unsigned RA7 :1;
};
struct {
unsigned AN0 :1;
unsigned AN1 :1;
unsigned AN2 :1;
unsigned AN3 :1;
unsigned AN4 :1;
unsigned AN5 :1;
unsigned OSC2 :1;
unsigned OSC1 :1;
};
struct {
unsigned :2;
unsigned VREFM :1;
unsigned VREFP :1;
unsigned :1;
unsigned LVDIN :1;
unsigned CLKO :1;
unsigned CLKI :1;
};
struct {
unsigned ULPWUIN :1;
unsigned :6;
unsigned RJPU :1;
};
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __at(0xF80);

# 1197
extern volatile unsigned char PORTB __at(0xF81);

asm("PORTB equ 0F81h");


typedef union {
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
struct {
unsigned :3;
unsigned CCP2_PA2 :1;
};
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __at(0xF81);

# 1268
extern volatile unsigned char PORTC __at(0xF82);

asm("PORTC equ 0F82h");


typedef union {
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned RC3 :1;
unsigned RC4 :1;
unsigned RC5 :1;
unsigned RC6 :1;
unsigned RC7 :1;
};
struct {
unsigned T1OSO :1;
unsigned T1OSI :1;
unsigned CCP1 :1;
unsigned INT0 :1;
unsigned INT1 :1;
unsigned INT2 :1;
unsigned TX :1;
unsigned RX :1;
};
struct {
unsigned T13CKI :1;
unsigned CCP2 :1;
unsigned :1;
unsigned T0CKI :1;
unsigned SDA :1;
unsigned SCK :1;
unsigned CK :1;
unsigned DT :1;
};
struct {
unsigned :1;
unsigned NOT_FLTA :1;
};
struct {
unsigned :2;
unsigned NOT_FLTB :1;
};
struct {
unsigned :6;
unsigned NOT_SS :1;
};
struct {
unsigned :1;
unsigned nFLTA :1;
unsigned nFLTB :1;
unsigned T5CKI :1;
unsigned SDI :1;
unsigned SCL :1;
unsigned nSS :1;
unsigned SDO :1;
};
struct {
unsigned :1;
unsigned FLTA :1;
unsigned FLTB :1;
unsigned :3;
unsigned SS :1;
};
struct {
unsigned :1;
unsigned PA2 :1;
unsigned PA1 :1;
};
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __at(0xF82);

# 1534
extern volatile unsigned char PORTD __at(0xF83);

asm("PORTD equ 0F83h");


typedef union {
struct {
unsigned RD0 :1;
unsigned RD1 :1;
unsigned RD2 :1;
unsigned RD3 :1;
unsigned RD4 :1;
unsigned RD5 :1;
unsigned RD6 :1;
unsigned RD7 :1;
};
struct {
unsigned :7;
unsigned SS2 :1;
};
} PORTDbits_t;
extern volatile PORTDbits_t PORTDbits __at(0xF83);

# 1605
extern volatile unsigned char PORTE __at(0xF84);

asm("PORTE equ 0F84h");


typedef union {
struct {
unsigned RE0 :1;
unsigned RE1 :1;
unsigned RE2 :1;
unsigned RE3 :1;
};
struct {
unsigned :3;
unsigned NOT_MCLR :1;
};
struct {
unsigned :3;
unsigned nMCLR :1;
};
struct {
unsigned :3;
unsigned MCLR :1;
};
struct {
unsigned PD2 :1;
unsigned PC2 :1;
unsigned CCP10 :1;
unsigned CCP9E :1;
};
struct {
unsigned RDE :1;
unsigned WRE :1;
unsigned CS :1;
unsigned PC3E :1;
};
struct {
unsigned :2;
unsigned PB2 :1;
};
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __at(0xF84);

# 1731
extern volatile unsigned short TMR5 __at(0xF87);

asm("TMR5 equ 0F87h");




extern volatile unsigned char TMR5L __at(0xF87);

asm("TMR5L equ 0F87h");




extern volatile unsigned char TMR5H __at(0xF88);

asm("TMR5H equ 0F88h");




extern volatile unsigned char LATA __at(0xF89);

asm("LATA equ 0F89h");


typedef union {
struct {
unsigned LATA0 :1;
unsigned LATA1 :1;
unsigned LATA2 :1;
unsigned LATA3 :1;
unsigned LATA4 :1;
unsigned LATA5 :1;
unsigned LATA6 :1;
unsigned LATA7 :1;
};
struct {
unsigned LA0 :1;
unsigned LA1 :1;
unsigned LA2 :1;
unsigned LA3 :1;
unsigned LA4 :1;
unsigned LA5 :1;
unsigned LA6 :1;
unsigned LA7 :1;
};
} LATAbits_t;
extern volatile LATAbits_t LATAbits __at(0xF89);

# 1864
extern volatile unsigned char LATB __at(0xF8A);

asm("LATB equ 0F8Ah");


typedef union {
struct {
unsigned LATB0 :1;
unsigned LATB1 :1;
unsigned LATB2 :1;
unsigned LATB3 :1;
unsigned LATB4 :1;
unsigned LATB5 :1;
unsigned LATB6 :1;
unsigned LATB7 :1;
};
struct {
unsigned LB0 :1;
unsigned LB1 :1;
unsigned LB2 :1;
unsigned LB3 :1;
unsigned LB4 :1;
unsigned LB5 :1;
unsigned LB6 :1;
unsigned LB7 :1;
};
} LATBbits_t;
extern volatile LATBbits_t LATBbits __at(0xF8A);

# 1976
extern volatile unsigned char LATC __at(0xF8B);

asm("LATC equ 0F8Bh");


typedef union {
struct {
unsigned LATC0 :1;
unsigned LATC1 :1;
unsigned LATC2 :1;
unsigned LATC3 :1;
unsigned LATC4 :1;
unsigned LATC5 :1;
unsigned LATC6 :1;
unsigned LATC7 :1;
};
struct {
unsigned LC0 :1;
unsigned LC1 :1;
unsigned LC2 :1;
unsigned LC3 :1;
unsigned LC4 :1;
unsigned LC5 :1;
unsigned LC6 :1;
unsigned LC7 :1;
};
} LATCbits_t;
extern volatile LATCbits_t LATCbits __at(0xF8B);

# 2088
extern volatile unsigned char LATD __at(0xF8C);

asm("LATD equ 0F8Ch");


typedef union {
struct {
unsigned LATD0 :1;
unsigned LATD1 :1;
unsigned LATD2 :1;
unsigned LATD3 :1;
unsigned LATD4 :1;
unsigned LATD5 :1;
unsigned LATD6 :1;
unsigned LATD7 :1;
};
struct {
unsigned LD0 :1;
unsigned LD1 :1;
unsigned LD2 :1;
unsigned LD3 :1;
unsigned LD4 :1;
unsigned LD5 :1;
unsigned LD6 :1;
unsigned LD7 :1;
};
} LATDbits_t;
extern volatile LATDbits_t LATDbits __at(0xF8C);

# 2200
extern volatile unsigned char LATE __at(0xF8D);

asm("LATE equ 0F8Dh");


typedef union {
struct {
unsigned LATE0 :1;
unsigned LATE1 :1;
unsigned LATE2 :1;
};
struct {
unsigned LE0 :1;
unsigned LE1 :1;
unsigned LE2 :1;
};
} LATEbits_t;
extern volatile LATEbits_t LATEbits __at(0xF8D);

# 2252
extern volatile unsigned short PR5 __at(0xF90);

asm("PR5 equ 0F90h");




extern volatile unsigned char PR5L __at(0xF90);

asm("PR5L equ 0F90h");




extern volatile unsigned char PR5H __at(0xF91);

asm("PR5H equ 0F91h");




extern volatile unsigned char TRISA __at(0xF92);

asm("TRISA equ 0F92h");


extern volatile unsigned char DDRA __at(0xF92);

asm("DDRA equ 0F92h");


typedef union {
struct {
unsigned TRISA0 :1;
unsigned TRISA1 :1;
unsigned TRISA2 :1;
unsigned TRISA3 :1;
unsigned TRISA4 :1;
unsigned TRISA5 :1;
unsigned TRISA6 :1;
unsigned TRISA7 :1;
};
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
unsigned RA7 :1;
};
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __at(0xF92);

# 2388
typedef union {
struct {
unsigned TRISA0 :1;
unsigned TRISA1 :1;
unsigned TRISA2 :1;
unsigned TRISA3 :1;
unsigned TRISA4 :1;
unsigned TRISA5 :1;
unsigned TRISA6 :1;
unsigned TRISA7 :1;
};
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
unsigned RA6 :1;
unsigned RA7 :1;
};
} DDRAbits_t;
extern volatile DDRAbits_t DDRAbits __at(0xF92);

# 2495
extern volatile unsigned char TRISB __at(0xF93);

asm("TRISB equ 0F93h");


extern volatile unsigned char DDRB __at(0xF93);

asm("DDRB equ 0F93h");


typedef union {
struct {
unsigned TRISB0 :1;
unsigned TRISB1 :1;
unsigned TRISB2 :1;
unsigned TRISB3 :1;
unsigned TRISB4 :1;
unsigned TRISB5 :1;
unsigned TRISB6 :1;
unsigned TRISB7 :1;
};
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __at(0xF93);

# 2610
typedef union {
struct {
unsigned TRISB0 :1;
unsigned TRISB1 :1;
unsigned TRISB2 :1;
unsigned TRISB3 :1;
unsigned TRISB4 :1;
unsigned TRISB5 :1;
unsigned TRISB6 :1;
unsigned TRISB7 :1;
};
struct {
unsigned RB0 :1;
unsigned RB1 :1;
unsigned RB2 :1;
unsigned RB3 :1;
unsigned RB4 :1;
unsigned RB5 :1;
unsigned RB6 :1;
unsigned RB7 :1;
};
} DDRBbits_t;
extern volatile DDRBbits_t DDRBbits __at(0xF93);

# 2717
extern volatile unsigned char TRISC __at(0xF94);

asm("TRISC equ 0F94h");


extern volatile unsigned char DDRC __at(0xF94);

asm("DDRC equ 0F94h");


typedef union {
struct {
unsigned TRISC0 :1;
unsigned TRISC1 :1;
unsigned TRISC2 :1;
unsigned TRISC3 :1;
unsigned TRISC4 :1;
unsigned TRISC5 :1;
unsigned TRISC6 :1;
unsigned TRISC7 :1;
};
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned RC3 :1;
unsigned RC4 :1;
unsigned RC5 :1;
unsigned RC6 :1;
unsigned RC7 :1;
};
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __at(0xF94);

# 2832
typedef union {
struct {
unsigned TRISC0 :1;
unsigned TRISC1 :1;
unsigned TRISC2 :1;
unsigned TRISC3 :1;
unsigned TRISC4 :1;
unsigned TRISC5 :1;
unsigned TRISC6 :1;
unsigned TRISC7 :1;
};
struct {
unsigned RC0 :1;
unsigned RC1 :1;
unsigned RC2 :1;
unsigned RC3 :1;
unsigned RC4 :1;
unsigned RC5 :1;
unsigned RC6 :1;
unsigned RC7 :1;
};
} DDRCbits_t;
extern volatile DDRCbits_t DDRCbits __at(0xF94);

# 2939
extern volatile unsigned char TRISD __at(0xF95);

asm("TRISD equ 0F95h");


extern volatile unsigned char DDRD __at(0xF95);

asm("DDRD equ 0F95h");


typedef union {
struct {
unsigned TRISD0 :1;
unsigned TRISD1 :1;
unsigned TRISD2 :1;
unsigned TRISD3 :1;
unsigned TRISD4 :1;
unsigned TRISD5 :1;
unsigned TRISD6 :1;
unsigned TRISD7 :1;
};
struct {
unsigned RD0 :1;
unsigned RD1 :1;
unsigned RD2 :1;
unsigned RD3 :1;
unsigned RD4 :1;
unsigned RD5 :1;
unsigned RD6 :1;
unsigned RD7 :1;
};
} TRISDbits_t;
extern volatile TRISDbits_t TRISDbits __at(0xF95);

# 3054
typedef union {
struct {
unsigned TRISD0 :1;
unsigned TRISD1 :1;
unsigned TRISD2 :1;
unsigned TRISD3 :1;
unsigned TRISD4 :1;
unsigned TRISD5 :1;
unsigned TRISD6 :1;
unsigned TRISD7 :1;
};
struct {
unsigned RD0 :1;
unsigned RD1 :1;
unsigned RD2 :1;
unsigned RD3 :1;
unsigned RD4 :1;
unsigned RD5 :1;
unsigned RD6 :1;
unsigned RD7 :1;
};
} DDRDbits_t;
extern volatile DDRDbits_t DDRDbits __at(0xF95);

# 3161
extern volatile unsigned char TRISE __at(0xF96);

asm("TRISE equ 0F96h");


extern volatile unsigned char DDRE __at(0xF96);

asm("DDRE equ 0F96h");


typedef union {
struct {
unsigned TRISE0 :1;
unsigned TRISE1 :1;
unsigned TRISE2 :1;
};
struct {
unsigned RE0 :1;
unsigned RE1 :1;
unsigned RE2 :1;
};
} TRISEbits_t;
extern volatile TRISEbits_t TRISEbits __at(0xF96);

# 3216
typedef union {
struct {
unsigned TRISE0 :1;
unsigned TRISE1 :1;
unsigned TRISE2 :1;
};
struct {
unsigned RE0 :1;
unsigned RE1 :1;
unsigned RE2 :1;
};
} DDREbits_t;
extern volatile DDREbits_t DDREbits __at(0xF96);

# 3263
extern volatile unsigned char ADCHS __at(0xF99);

asm("ADCHS equ 0F99h");


typedef union {
struct {
unsigned SASEL :2;
unsigned SCSEL :2;
unsigned SBSEL :2;
unsigned SDSEL :2;
};
struct {
unsigned GASEL0 :1;
unsigned GASEL1 :1;
unsigned GCSEL0 :1;
unsigned GCSEL1 :1;
unsigned GBSEL0 :1;
unsigned GBSEL1 :1;
unsigned GDSEL0 :1;
unsigned GDSEL1 :1;
};
struct {
unsigned SASEL0 :1;
unsigned SASEL1 :1;
unsigned SCSEL0 :1;
unsigned SCSEL1 :1;
unsigned SBSEL0 :1;
unsigned SBSEL1 :1;
unsigned SDSEL0 :1;
unsigned SDSEL1 :1;
};
} ADCHSbits_t;
extern volatile ADCHSbits_t ADCHSbits __at(0xF99);

# 3401
extern volatile unsigned char ADCON3 __at(0xF9A);

asm("ADCON3 equ 0F9Ah");


typedef union {
struct {
unsigned SSRC :5;
unsigned :1;
unsigned ADRS :2;
};
struct {
unsigned SSRC0 :1;
unsigned SSRC1 :1;
unsigned SSRC2 :1;
unsigned SSRC3 :1;
unsigned SSRC4 :1;
unsigned :1;
unsigned ADRS0 :1;
unsigned ADRS1 :1;
};
} ADCON3bits_t;
extern volatile ADCON3bits_t ADCON3bits __at(0xF9A);

# 3473
extern volatile unsigned char OSCTUNE __at(0xF9B);

asm("OSCTUNE equ 0F9Bh");


typedef union {
struct {
unsigned TUN :6;
};
struct {
unsigned TUN0 :1;
unsigned TUN1 :1;
unsigned TUN2 :1;
unsigned TUN3 :1;
unsigned TUN4 :1;
unsigned TUN5 :1;
};
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __at(0xF9B);

# 3531
extern volatile unsigned char PIE1 __at(0xF9D);

asm("PIE1 equ 0F9Dh");


typedef union {
struct {
unsigned TMR1IE :1;
unsigned TMR2IE :1;
unsigned CCP1IE :1;
unsigned SSPIE :1;
unsigned TXIE :1;
unsigned RCIE :1;
unsigned ADIE :1;
};
struct {
unsigned :4;
unsigned TBIE :1;
};
struct {
unsigned :4;
unsigned TX1IE :1;
unsigned RC1IE :1;
};
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __at(0xF9D);

# 3611
extern volatile unsigned char PIR1 __at(0xF9E);

asm("PIR1 equ 0F9Eh");


typedef union {
struct {
unsigned TMR1IF :1;
unsigned TMR2IF :1;
unsigned CCP1IF :1;
unsigned SSPIF :1;
unsigned TXIF :1;
unsigned RCIF :1;
unsigned ADIF :1;
};
struct {
unsigned :4;
unsigned TBIF :1;
};
struct {
unsigned :4;
unsigned TX1IF :1;
unsigned RC1IF :1;
};
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __at(0xF9E);

# 3691
extern volatile unsigned char IPR1 __at(0xF9F);

asm("IPR1 equ 0F9Fh");


typedef union {
struct {
unsigned TMR1IP :1;
unsigned TMR2IP :1;
unsigned CCP1IP :1;
unsigned SSPIP :1;
unsigned TXIP :1;
unsigned RCIP :1;
unsigned ADIP :1;
};
struct {
unsigned :4;
unsigned TBIP :1;
};
struct {
unsigned :4;
unsigned TX1IP :1;
unsigned RC1IP :1;
};
} IPR1bits_t;
extern volatile IPR1bits_t IPR1bits __at(0xF9F);

# 3771
extern volatile unsigned char PIE2 __at(0xFA0);

asm("PIE2 equ 0FA0h");


typedef union {
struct {
unsigned CCP2IE :1;
unsigned :1;
unsigned LVDIE :1;
unsigned :1;
unsigned EEIE :1;
unsigned :2;
unsigned OSFIE :1;
};
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __at(0xFA0);

# 3812
extern volatile unsigned char PIR2 __at(0xFA1);

asm("PIR2 equ 0FA1h");


typedef union {
struct {
unsigned CCP2IF :1;
unsigned :1;
unsigned LVDIF :1;
unsigned :1;
unsigned EEIF :1;
unsigned :2;
unsigned OSFIF :1;
};
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __at(0xFA1);

# 3853
extern volatile unsigned char IPR2 __at(0xFA2);

asm("IPR2 equ 0FA2h");


typedef union {
struct {
unsigned CCP2IP :1;
unsigned :1;
unsigned LVDIP :1;
unsigned :1;
unsigned EEIP :1;
unsigned :2;
unsigned OSFIP :1;
};
} IPR2bits_t;
extern volatile IPR2bits_t IPR2bits __at(0xFA2);

# 3894
extern volatile unsigned char PIE3 __at(0xFA3);

asm("PIE3 equ 0FA3h");


typedef union {
struct {
unsigned TMR5IE :1;
unsigned IC1IE :1;
unsigned IC2QEIE :1;
unsigned IC3DRIE :1;
unsigned PTIE :1;
};
struct {
unsigned RXB0IE :1;
unsigned RXB1IE :1;
unsigned TXB0IE :1;
unsigned TXB1IE :1;
unsigned TXB2IE :1;
};
struct {
unsigned :1;
unsigned RXBNIE :1;
unsigned :2;
unsigned TXBNIE :1;
};
} PIE3bits_t;
extern volatile PIE3bits_t PIE3bits __at(0xFA3);

# 3986
extern volatile unsigned char PIR3 __at(0xFA4);

asm("PIR3 equ 0FA4h");


typedef union {
struct {
unsigned TMR5IF :1;
unsigned IC1IF :1;
unsigned IC2QEIF :1;
unsigned IC3DRIF :1;
unsigned PTIF :1;
};
struct {
unsigned :1;
unsigned RXBNIF :1;
unsigned :2;
unsigned TXBNIF :1;
};
} PIR3bits_t;
extern volatile PIR3bits_t PIR3bits __at(0xFA4);

# 4046
extern volatile unsigned char IPR3 __at(0xFA5);

asm("IPR3 equ 0FA5h");


typedef union {
struct {
unsigned TMR5IP :1;
unsigned IC1IP :1;
unsigned IC2QEIP :1;
unsigned IC3DRIP :1;
unsigned PTIP :1;
};
struct {
unsigned :1;
unsigned RXBNIP :1;
unsigned :2;
unsigned TXBNIP :1;
};
} IPR3bits_t;
extern volatile IPR3bits_t IPR3bits __at(0xFA5);

# 4106
extern volatile unsigned char EECON1 __at(0xFA6);

asm("EECON1 equ 0FA6h");


typedef union {
struct {
unsigned RD :1;
unsigned WR :1;
unsigned WREN :1;
unsigned WRERR :1;
unsigned FREE :1;
unsigned :1;
unsigned CFGS :1;
unsigned EEPGD :1;
};
struct {
unsigned :6;
unsigned EEFS :1;
};
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __at(0xFA6);

# 4172
extern volatile unsigned char EECON2 __at(0xFA7);

asm("EECON2 equ 0FA7h");




extern volatile unsigned char EEDATA __at(0xFA8);

asm("EEDATA equ 0FA8h");




extern volatile unsigned char EEADR __at(0xFA9);

asm("EEADR equ 0FA9h");




extern volatile unsigned char BAUDCON __at(0xFAA);

asm("BAUDCON equ 0FAAh");


extern volatile unsigned char BAUDCTL __at(0xFAA);

asm("BAUDCTL equ 0FAAh");


typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned TXCKP :1;
unsigned RXDTP :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
struct {
unsigned :4;
unsigned SCKP :1;
unsigned :1;
unsigned RCMT :1;
};
struct {
unsigned :5;
unsigned RXCKP :1;
};
struct {
unsigned :1;
unsigned W4E :1;
};
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __at(0xFAA);

# 4287
typedef union {
struct {
unsigned ABDEN :1;
unsigned WUE :1;
unsigned :1;
unsigned BRG16 :1;
unsigned TXCKP :1;
unsigned RXDTP :1;
unsigned RCIDL :1;
unsigned ABDOVF :1;
};
struct {
unsigned :4;
unsigned SCKP :1;
unsigned :1;
unsigned RCMT :1;
};
struct {
unsigned :5;
unsigned RXCKP :1;
};
struct {
unsigned :1;
unsigned W4E :1;
};
} BAUDCTLbits_t;
extern volatile BAUDCTLbits_t BAUDCTLbits __at(0xFAA);

# 4373
extern volatile unsigned char RCSTA __at(0xFAB);

asm("RCSTA equ 0FABh");


extern volatile unsigned char RCSTA1 __at(0xFAB);

asm("RCSTA1 equ 0FABh");


typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
struct {
unsigned :3;
unsigned ADEN :1;
};
struct {
unsigned :5;
unsigned SRENA :1;
};
struct {
unsigned :6;
unsigned RC8_9 :1;
};
struct {
unsigned :6;
unsigned RC9 :1;
};
struct {
unsigned RCD8 :1;
};
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __at(0xFAB);

# 4482
typedef union {
struct {
unsigned RX9D :1;
unsigned OERR :1;
unsigned FERR :1;
unsigned ADDEN :1;
unsigned CREN :1;
unsigned SREN :1;
unsigned RX9 :1;
unsigned SPEN :1;
};
struct {
unsigned :3;
unsigned ADEN :1;
};
struct {
unsigned :5;
unsigned SRENA :1;
};
struct {
unsigned :6;
unsigned RC8_9 :1;
};
struct {
unsigned :6;
unsigned RC9 :1;
};
struct {
unsigned RCD8 :1;
};
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __at(0xFAB);

# 4583
extern volatile unsigned char TXSTA __at(0xFAC);

asm("TXSTA equ 0FACh");


extern volatile unsigned char TXSTA1 __at(0xFAC);

asm("TXSTA1 equ 0FACh");


typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
struct {
unsigned TX9D1 :1;
unsigned TRMT1 :1;
unsigned BRGH1 :1;
unsigned SENDB1 :1;
unsigned SYNC1 :1;
unsigned TXEN1 :1;
unsigned TX91 :1;
unsigned CSRC1 :1;
};
struct {
unsigned :6;
unsigned TX8_9 :1;
};
struct {
unsigned TXD8 :1;
};
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __at(0xFAC);

# 4715
typedef union {
struct {
unsigned TX9D :1;
unsigned TRMT :1;
unsigned BRGH :1;
unsigned SENDB :1;
unsigned SYNC :1;
unsigned TXEN :1;
unsigned TX9 :1;
unsigned CSRC :1;
};
struct {
unsigned TX9D1 :1;
unsigned TRMT1 :1;
unsigned BRGH1 :1;
unsigned SENDB1 :1;
unsigned SYNC1 :1;
unsigned TXEN1 :1;
unsigned TX91 :1;
unsigned CSRC1 :1;
};
struct {
unsigned :6;
unsigned TX8_9 :1;
};
struct {
unsigned TXD8 :1;
};
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __at(0xFAC);

# 4839
extern volatile unsigned char TXREG __at(0xFAD);

asm("TXREG equ 0FADh");


extern volatile unsigned char TXREG1 __at(0xFAD);

asm("TXREG1 equ 0FADh");




extern volatile unsigned char RCREG __at(0xFAE);

asm("RCREG equ 0FAEh");


extern volatile unsigned char RCREG1 __at(0xFAE);

asm("RCREG1 equ 0FAEh");




extern volatile unsigned char SPBRG __at(0xFAF);

asm("SPBRG equ 0FAFh");


extern volatile unsigned char SPBRG1 __at(0xFAF);

asm("SPBRG1 equ 0FAFh");




extern volatile unsigned char SPBRGH __at(0xFB0);

asm("SPBRGH equ 0FB0h");




extern volatile unsigned char QEICON __at(0xFB6);

asm("QEICON equ 0FB6h");


typedef union {
struct {
unsigned :5;
unsigned UP_NOT_DOWN :1;
};
struct {
unsigned :7;
unsigned NOT_VELM :1;
};
struct {
unsigned PDEC :2;
unsigned QEIM :3;
unsigned UP_nDOWN :1;
unsigned QERR :1;
unsigned nVELM :1;
};
struct {
unsigned PDEC0 :1;
unsigned PDEC1 :1;
unsigned QEIM0 :1;
unsigned QEIM1 :1;
unsigned QEIM2 :1;
unsigned UP_DOWN :1;
unsigned :1;
unsigned VELM :1;
};
struct {
unsigned :5;
unsigned UP :1;
};
struct {
unsigned :5;
unsigned DOWN :1;
};
struct {
unsigned :5;
unsigned NOT_DOWN :1;
};
struct {
unsigned :5;
unsigned nDOWN :1;
};
struct {
unsigned :5;
unsigned UPDOWN :1;
};
} QEICONbits_t;
extern volatile QEICONbits_t QEICONbits __at(0xFB6);

# 5034
extern volatile unsigned char T5CON __at(0xFB7);

asm("T5CON equ 0FB7h");


typedef union {
struct {
unsigned :2;
unsigned NOT_T5SYNC :1;
};
struct {
unsigned :6;
unsigned NOT_RESEN :1;
};
struct {
unsigned TMR5ON :1;
unsigned TMR5CS :1;
unsigned nT5SYNC :1;
unsigned T5PS :2;
unsigned T5MOD :1;
unsigned nRESEN :1;
unsigned T5SEN :1;
};
struct {
unsigned :2;
unsigned T5SYNC :1;
unsigned T5PS0 :1;
unsigned T5PS1 :1;
unsigned :1;
unsigned RESEN :1;
};
struct {
unsigned :1;
unsigned RD165 :1;
unsigned :1;
unsigned SOSCEN5 :1;
};
} T5CONbits_t;
extern volatile T5CONbits_t T5CONbits __at(0xFB7);

# 5152
extern volatile unsigned char ANSEL0 __at(0xFB8);

asm("ANSEL0 equ 0FB8h");


typedef union {
struct {
unsigned ANS0 :1;
unsigned ANS1 :1;
unsigned ANS2 :1;
unsigned ANS3 :1;
unsigned ANS4 :1;
unsigned ANS5 :1;
unsigned ANS6 :1;
unsigned ANS7 :1;
};
} ANSEL0bits_t;
extern volatile ANSEL0bits_t ANSEL0bits __at(0xFB8);

# 5214
extern volatile unsigned char ANSEL1 __at(0xFB9);

asm("ANSEL1 equ 0FB9h");


typedef union {
struct {
unsigned ANS8 :1;
};
} ANSEL1bits_t;
extern volatile ANSEL1bits_t ANSEL1bits __at(0xFB9);

# 5234
extern volatile unsigned char CCP2CON __at(0xFBA);

asm("CCP2CON equ 0FBAh");


typedef union {
struct {
unsigned CCP2M :4;
unsigned DC2B :2;
};
struct {
unsigned CCP2M0 :1;
unsigned CCP2M1 :1;
unsigned CCP2M2 :1;
unsigned CCP2M3 :1;
unsigned CCP2Y :1;
unsigned CCP2X :1;
};
struct {
unsigned :4;
unsigned DC2B0 :1;
unsigned DC2B1 :1;
};
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __at(0xFBA);

# 5313
extern volatile unsigned short CCPR2 __at(0xFBB);

asm("CCPR2 equ 0FBBh");




extern volatile unsigned char CCPR2L __at(0xFBB);

asm("CCPR2L equ 0FBBh");




extern volatile unsigned char CCPR2H __at(0xFBC);

asm("CCPR2H equ 0FBCh");




extern volatile unsigned char CCP1CON __at(0xFBD);

asm("CCP1CON equ 0FBDh");


typedef union {
struct {
unsigned CCP1M :4;
unsigned DC1B :2;
};
struct {
unsigned CCP1M0 :1;
unsigned CCP1M1 :1;
unsigned CCP1M2 :1;
unsigned CCP1M3 :1;
unsigned CCP1Y :1;
unsigned CCP1X :1;
};
struct {
unsigned :4;
unsigned DC1B0 :1;
unsigned DC1B1 :1;
};
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __at(0xFBD);

# 5413
extern volatile unsigned short CCPR1 __at(0xFBE);

asm("CCPR1 equ 0FBEh");




extern volatile unsigned char CCPR1L __at(0xFBE);

asm("CCPR1L equ 0FBEh");




extern volatile unsigned char CCPR1H __at(0xFBF);

asm("CCPR1H equ 0FBFh");




extern volatile unsigned char ADCON2 __at(0xFC0);

asm("ADCON2 equ 0FC0h");


typedef union {
struct {
unsigned ADCS :3;
unsigned ACQT :4;
unsigned ADFM :1;
};
struct {
unsigned ADCS0 :1;
unsigned ADCS1 :1;
unsigned ADCS2 :1;
unsigned ACQT0 :1;
unsigned ACQT1 :1;
unsigned ACQT2 :1;
unsigned ACQT3 :1;
};
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __at(0xFC0);

# 5510
extern volatile unsigned char ADCON1 __at(0xFC1);

asm("ADCON1 equ 0FC1h");


typedef union {
struct {
unsigned ADPNT :2;
unsigned BFOVFL :1;
unsigned BFEMT :1;
unsigned FIFOEN :1;
unsigned :1;
unsigned VCFG :2;
};
struct {
unsigned ADPNT0 :1;
unsigned ADPNT1 :1;
unsigned :4;
unsigned VCFG0 :1;
unsigned VCFG1 :1;
};
struct {
unsigned :2;
unsigned FFOVFL :1;
};
struct {
unsigned :3;
unsigned CHSN3 :1;
unsigned VCFG01 :1;
};
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __at(0xFC1);

# 5606
extern volatile unsigned char ADCON0 __at(0xFC2);

asm("ADCON0 equ 0FC2h");


typedef union {
struct {
unsigned :1;
unsigned GO_NOT_DONE :1;
};
struct {
unsigned ADON :1;
unsigned GO_nDONE :1;
unsigned ACMOD :2;
unsigned ACSCH :1;
unsigned ACONV :1;
};
struct {
unsigned :1;
unsigned GO_DONE :1;
unsigned ACMOD0 :1;
unsigned ACMOD1 :1;
};
struct {
unsigned :1;
unsigned DONE :1;
};
struct {
unsigned :1;
unsigned GO :1;
};
struct {
unsigned :1;
unsigned NOT_DONE :1;
};
struct {
unsigned :1;
unsigned nDONE :1;
};
struct {
unsigned :1;
unsigned GODONE :1;
};
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __at(0xFC2);

# 5725
extern volatile unsigned short ADRES __at(0xFC3);

asm("ADRES equ 0FC3h");




extern volatile unsigned char ADRESL __at(0xFC3);

asm("ADRESL equ 0FC3h");




extern volatile unsigned char ADRESH __at(0xFC4);

asm("ADRESH equ 0FC4h");




extern volatile unsigned char SSPCON __at(0xFC6);

asm("SSPCON equ 0FC6h");


extern volatile unsigned char SSPCON1 __at(0xFC6);

asm("SSPCON1 equ 0FC6h");


typedef union {
struct {
unsigned SSPM :4;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM0 :1;
unsigned SSPM1 :1;
unsigned SSPM2 :1;
unsigned SSPM3 :1;
};
} SSPCONbits_t;
extern volatile SSPCONbits_t SSPCONbits __at(0xFC6);

# 5819
typedef union {
struct {
unsigned SSPM :4;
unsigned CKP :1;
unsigned SSPEN :1;
unsigned SSPOV :1;
unsigned WCOL :1;
};
struct {
unsigned SSPM0 :1;
unsigned SSPM1 :1;
unsigned SSPM2 :1;
unsigned SSPM3 :1;
};
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __at(0xFC6);

# 5884
extern volatile unsigned char SSPSTAT __at(0xFC7);

asm("SSPSTAT equ 0FC7h");


typedef union {
struct {
unsigned :2;
unsigned R_NOT_W :1;
};
struct {
unsigned :5;
unsigned D_NOT_A :1;
};
struct {
unsigned BF :1;
unsigned UA :1;
unsigned R_nW :1;
unsigned S :1;
unsigned P :1;
unsigned D_nA :1;
unsigned CKE :1;
unsigned SMP :1;
};
struct {
unsigned :2;
unsigned R_W :1;
unsigned :2;
unsigned D_A :1;
};
struct {
unsigned :2;
unsigned nW :1;
unsigned :2;
unsigned nA :1;
};
struct {
unsigned :2;
unsigned NOT_WRITE :1;
};
struct {
unsigned :5;
unsigned NOT_ADDRESS :1;
};
struct {
unsigned :2;
unsigned nWRITE :1;
unsigned :2;
unsigned nADDRESS :1;
};
struct {
unsigned :2;
unsigned READ_WRITE :1;
unsigned :2;
unsigned DATA_ADDRESS :1;
};
struct {
unsigned :2;
unsigned R :1;
unsigned :2;
unsigned D :1;
};
struct {
unsigned :2;
unsigned RW :1;
unsigned START :1;
unsigned STOP :1;
unsigned DA :1;
};
struct {
unsigned :2;
unsigned NOT_W :1;
unsigned :2;
unsigned NOT_A :1;
};
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __at(0xFC7);

# 6105
extern volatile unsigned char SSPADD __at(0xFC8);

asm("SSPADD equ 0FC8h");




extern volatile unsigned char SSPBUF __at(0xFC9);

asm("SSPBUF equ 0FC9h");




extern volatile unsigned char T2CON __at(0xFCA);

asm("T2CON equ 0FCAh");


typedef union {
struct {
unsigned T2CKPS :2;
unsigned TMR2ON :1;
unsigned TOUTPS :4;
};
struct {
unsigned T2CKPS0 :1;
unsigned T2CKPS1 :1;
unsigned :1;
unsigned T2OUTPS0 :1;
unsigned T2OUTPS1 :1;
unsigned T2OUTPS2 :1;
unsigned T2OUTPS3 :1;
};
struct {
unsigned :3;
unsigned TOUTPS0 :1;
unsigned TOUTPS1 :1;
unsigned TOUTPS2 :1;
unsigned TOUTPS3 :1;
};
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __at(0xFCA);

# 6217
extern volatile unsigned char PR2 __at(0xFCB);

asm("PR2 equ 0FCBh");


extern volatile unsigned char MEMCON __at(0xFCB);

asm("MEMCON equ 0FCBh");


typedef union {
struct {
unsigned :7;
unsigned EBDIS :1;
};
struct {
unsigned :4;
unsigned WAIT0 :1;
};
struct {
unsigned :5;
unsigned WAIT1 :1;
};
struct {
unsigned WM0 :1;
};
struct {
unsigned :1;
unsigned WM1 :1;
};
} PR2bits_t;
extern volatile PR2bits_t PR2bits __at(0xFCB);

# 6276
typedef union {
struct {
unsigned :7;
unsigned EBDIS :1;
};
struct {
unsigned :4;
unsigned WAIT0 :1;
};
struct {
unsigned :5;
unsigned WAIT1 :1;
};
struct {
unsigned WM0 :1;
};
struct {
unsigned :1;
unsigned WM1 :1;
};
} MEMCONbits_t;
extern volatile MEMCONbits_t MEMCONbits __at(0xFCB);

# 6327
extern volatile unsigned char TMR2 __at(0xFCC);

asm("TMR2 equ 0FCCh");




extern volatile unsigned char T1CON __at(0xFCD);

asm("T1CON equ 0FCDh");


typedef union {
struct {
unsigned :2;
unsigned NOT_T1SYNC :1;
};
struct {
unsigned TMR1ON :1;
unsigned TMR1CS :1;
unsigned nT1SYNC :1;
unsigned T1OSCEN :1;
unsigned T1CKPS :2;
unsigned T1RUN :1;
unsigned RD16 :1;
};
struct {
unsigned :2;
unsigned T1SYNC :1;
unsigned :1;
unsigned T1CKPS0 :1;
unsigned T1CKPS1 :1;
};
struct {
unsigned :2;
unsigned T1INSYNC :1;
};
struct {
unsigned :3;
unsigned SOSCEN :1;
unsigned :3;
unsigned T1RD16 :1;
};
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __at(0xFCD);

# 6446
extern volatile unsigned short TMR1 __at(0xFCE);

asm("TMR1 equ 0FCEh");




extern volatile unsigned char TMR1L __at(0xFCE);

asm("TMR1L equ 0FCEh");




extern volatile unsigned char TMR1H __at(0xFCF);

asm("TMR1H equ 0FCFh");




extern volatile unsigned char RCON __at(0xFD0);

asm("RCON equ 0FD0h");


typedef union {
struct {
unsigned NOT_BOR :1;
};
struct {
unsigned :1;
unsigned NOT_POR :1;
};
struct {
unsigned :2;
unsigned NOT_PD :1;
};
struct {
unsigned :3;
unsigned NOT_TO :1;
};
struct {
unsigned :4;
unsigned NOT_RI :1;
};
struct {
unsigned nBOR :1;
unsigned nPOR :1;
unsigned nPD :1;
unsigned nTO :1;
unsigned nRI :1;
unsigned :2;
unsigned IPEN :1;
};
struct {
unsigned :7;
unsigned NOT_IPEN :1;
};
struct {
unsigned BOR :1;
unsigned POR :1;
unsigned PD :1;
unsigned TO :1;
unsigned RI :1;
unsigned :2;
unsigned nIPEN :1;
};
} RCONbits_t;
extern volatile RCONbits_t RCONbits __at(0xFD0);

# 6610
extern volatile unsigned char WDTCON __at(0xFD1);

asm("WDTCON equ 0FD1h");


typedef union {
struct {
unsigned SWDTEN :1;
unsigned :6;
unsigned WDTW :1;
};
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __at(0xFD1);

# 6637
extern volatile unsigned char LVDCON __at(0xFD2);

asm("LVDCON equ 0FD2h");


typedef union {
struct {
unsigned LVDL :4;
unsigned LVDEN :1;
unsigned IRVST :1;
};
struct {
unsigned LVDL0 :1;
unsigned LVDL1 :1;
unsigned LVDL2 :1;
unsigned LVDL3 :1;
unsigned :1;
unsigned IVRST :1;
};
} LVDCONbits_t;
extern volatile LVDCONbits_t LVDCONbits __at(0xFD2);

# 6702
extern volatile unsigned char OSCCON __at(0xFD3);

asm("OSCCON equ 0FD3h");


typedef union {
struct {
unsigned SCS :2;
unsigned IOFS :1;
unsigned OSTS :1;
unsigned IRCF :3;
unsigned IDLEN :1;
};
struct {
unsigned SCS0 :1;
unsigned SCS1 :1;
unsigned :2;
unsigned IRCF0 :1;
unsigned IRCF1 :1;
unsigned IRCF2 :1;
};
struct {
unsigned :2;
unsigned FLTS :1;
};
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __at(0xFD3);

# 6788
extern volatile unsigned char T0CON __at(0xFD5);

asm("T0CON equ 0FD5h");


typedef union {
struct {
unsigned T0PS :3;
unsigned PSA :1;
unsigned T0SE :1;
unsigned T0CS :1;
unsigned T016BIT :1;
unsigned TMR0ON :1;
};
struct {
unsigned T0PS0 :1;
unsigned T0PS1 :1;
unsigned T0PS2 :1;
unsigned T0PS3 :1;
};
} T0CONbits_t;
extern volatile T0CONbits_t T0CONbits __at(0xFD5);

# 6864
extern volatile unsigned short TMR0 __at(0xFD6);

asm("TMR0 equ 0FD6h");




extern volatile unsigned char TMR0L __at(0xFD6);

asm("TMR0L equ 0FD6h");




extern volatile unsigned char TMR0H __at(0xFD7);

asm("TMR0H equ 0FD7h");




extern volatile unsigned char STATUS __at(0xFD8);

asm("STATUS equ 0FD8h");


typedef union {
struct {
unsigned C :1;
unsigned DC :1;
unsigned Z :1;
unsigned OV :1;
unsigned N :1;
};
struct {
unsigned CARRY :1;
unsigned :1;
unsigned ZERO :1;
unsigned OVERFLOW :1;
unsigned NEGATIVE :1;
};
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __at(0xFD8);

# 6956
extern volatile unsigned short FSR2 __at(0xFD9);

asm("FSR2 equ 0FD9h");




extern volatile unsigned char FSR2L __at(0xFD9);

asm("FSR2L equ 0FD9h");




extern volatile unsigned char FSR2H __at(0xFDA);

asm("FSR2H equ 0FDAh");




extern volatile unsigned char PLUSW2 __at(0xFDB);

asm("PLUSW2 equ 0FDBh");




extern volatile unsigned char PREINC2 __at(0xFDC);

asm("PREINC2 equ 0FDCh");




extern volatile unsigned char POSTDEC2 __at(0xFDD);

asm("POSTDEC2 equ 0FDDh");




extern volatile unsigned char POSTINC2 __at(0xFDE);

asm("POSTINC2 equ 0FDEh");




extern volatile unsigned char INDF2 __at(0xFDF);

asm("INDF2 equ 0FDFh");




extern volatile unsigned char BSR __at(0xFE0);

asm("BSR equ 0FE0h");




extern volatile unsigned short FSR1 __at(0xFE1);

asm("FSR1 equ 0FE1h");




extern volatile unsigned char FSR1L __at(0xFE1);

asm("FSR1L equ 0FE1h");




extern volatile unsigned char FSR1H __at(0xFE2);

asm("FSR1H equ 0FE2h");




extern volatile unsigned char PLUSW1 __at(0xFE3);

asm("PLUSW1 equ 0FE3h");




extern volatile unsigned char PREINC1 __at(0xFE4);

asm("PREINC1 equ 0FE4h");




extern volatile unsigned char POSTDEC1 __at(0xFE5);

asm("POSTDEC1 equ 0FE5h");




extern volatile unsigned char POSTINC1 __at(0xFE6);

asm("POSTINC1 equ 0FE6h");




extern volatile unsigned char INDF1 __at(0xFE7);

asm("INDF1 equ 0FE7h");




extern volatile unsigned char WREG __at(0xFE8);

asm("WREG equ 0FE8h");




extern volatile unsigned short FSR0 __at(0xFE9);

asm("FSR0 equ 0FE9h");




extern volatile unsigned char FSR0L __at(0xFE9);

asm("FSR0L equ 0FE9h");




extern volatile unsigned char FSR0H __at(0xFEA);

asm("FSR0H equ 0FEAh");




extern volatile unsigned char PLUSW0 __at(0xFEB);

asm("PLUSW0 equ 0FEBh");




extern volatile unsigned char PREINC0 __at(0xFEC);

asm("PREINC0 equ 0FECh");




extern volatile unsigned char POSTDEC0 __at(0xFED);

asm("POSTDEC0 equ 0FEDh");




extern volatile unsigned char POSTINC0 __at(0xFEE);

asm("POSTINC0 equ 0FEEh");




extern volatile unsigned char INDF0 __at(0xFEF);

asm("INDF0 equ 0FEFh");




extern volatile unsigned char INTCON3 __at(0xFF0);

asm("INTCON3 equ 0FF0h");


typedef union {
struct {
unsigned INT1IF :1;
unsigned INT2IF :1;
unsigned :1;
unsigned INT1IE :1;
unsigned INT2IE :1;
unsigned :1;
unsigned INT1IP :1;
unsigned INT2IP :1;
};
struct {
unsigned INT1F :1;
unsigned INT2F :1;
unsigned :1;
unsigned INT1E :1;
unsigned INT2E :1;
unsigned :1;
unsigned INT1P :1;
unsigned INT2P :1;
};
} INTCON3bits_t;
extern volatile INTCON3bits_t INTCON3bits __at(0xFF0);

# 7230
extern volatile unsigned char INTCON2 __at(0xFF1);

asm("INTCON2 equ 0FF1h");


typedef union {
struct {
unsigned :7;
unsigned NOT_RBPU :1;
};
struct {
unsigned RBIP :1;
unsigned :1;
unsigned TMR0IP :1;
unsigned :1;
unsigned INTEDG2 :1;
unsigned INTEDG1 :1;
unsigned INTEDG0 :1;
unsigned nRBPU :1;
};
struct {
unsigned :2;
unsigned T0IP :1;
unsigned :4;
unsigned RBPU :1;
};
} INTCON2bits_t;
extern volatile INTCON2bits_t INTCON2bits __at(0xFF1);

# 7307
extern volatile unsigned char INTCON __at(0xFF2);

asm("INTCON equ 0FF2h");


typedef union {
struct {
unsigned RBIF :1;
unsigned INT0IF :1;
unsigned TMR0IF :1;
unsigned RBIE :1;
unsigned INT0IE :1;
unsigned TMR0IE :1;
unsigned PEIE_GIEL :1;
unsigned GIE_GIEH :1;
};
struct {
unsigned :1;
unsigned INT0F :1;
unsigned T0IF :1;
unsigned :1;
unsigned INT0E :1;
unsigned T0IE :1;
unsigned PEIE :1;
unsigned GIE :1;
};
struct {
unsigned :6;
unsigned GIEL :1;
unsigned GIEH :1;
};
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __at(0xFF2);

# 7424
extern volatile unsigned short PROD __at(0xFF3);

asm("PROD equ 0FF3h");




extern volatile unsigned char PRODL __at(0xFF3);

asm("PRODL equ 0FF3h");




extern volatile unsigned char PRODH __at(0xFF4);

asm("PRODH equ 0FF4h");




extern volatile unsigned char TABLAT __at(0xFF5);

asm("TABLAT equ 0FF5h");

# 7453
extern volatile __uint24 TBLPTR __at(0xFF6);


asm("TBLPTR equ 0FF6h");




extern volatile unsigned char TBLPTRL __at(0xFF6);

asm("TBLPTRL equ 0FF6h");




extern volatile unsigned char TBLPTRH __at(0xFF7);

asm("TBLPTRH equ 0FF7h");




extern volatile unsigned char TBLPTRU __at(0xFF8);

asm("TBLPTRU equ 0FF8h");

# 7483
extern volatile __uint24 PCLAT __at(0xFF9);


asm("PCLAT equ 0FF9h");



extern volatile __uint24 PC __at(0xFF9);


asm("PC equ 0FF9h");




extern volatile unsigned char PCL __at(0xFF9);

asm("PCL equ 0FF9h");




extern volatile unsigned char PCLATH __at(0xFFA);

asm("PCLATH equ 0FFAh");




extern volatile unsigned char PCLATU __at(0xFFB);

asm("PCLATU equ 0FFBh");




extern volatile unsigned char STKPTR __at(0xFFC);

asm("STKPTR equ 0FFCh");


typedef union {
struct {
unsigned STKPTR :5;
unsigned :1;
unsigned STKUNF :1;
unsigned STKFUL :1;
};
struct {
unsigned STKPTR0 :1;
unsigned STKPTR1 :1;
unsigned STKPTR2 :1;
unsigned STKPTR3 :1;
unsigned STKPTR4 :1;
unsigned :2;
unsigned STKOVF :1;
};
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __at(0xFFC);

# 7592
extern volatile __uint24 TOS __at(0xFFD);


asm("TOS equ 0FFDh");




extern volatile unsigned char TOSL __at(0xFFD);

asm("TOSL equ 0FFDh");




extern volatile unsigned char TOSH __at(0xFFE);

asm("TOSH equ 0FFEh");




extern volatile unsigned char TOSU __at(0xFFF);

asm("TOSU equ 0FFFh");

# 7627
extern volatile __bit ABDEN __at(0x7D50);


extern volatile __bit ABDOVF __at(0x7D57);


extern volatile __bit ACMOD0 __at(0x7E12);


extern volatile __bit ACMOD1 __at(0x7E13);


extern volatile __bit ACONV __at(0x7E15);


extern volatile __bit ACQT0 __at(0x7E03);


extern volatile __bit ACQT1 __at(0x7E04);


extern volatile __bit ACQT2 __at(0x7E05);


extern volatile __bit ACQT3 __at(0x7E06);


extern volatile __bit ACSCH __at(0x7E14);


extern volatile __bit ADCS0 __at(0x7E00);


extern volatile __bit ADCS1 __at(0x7E01);


extern volatile __bit ADCS2 __at(0x7E02);


extern volatile __bit ADDEN __at(0x7D5B);


extern volatile __bit ADEN __at(0x7D5B);


extern volatile __bit ADFM __at(0x7E07);


extern volatile __bit ADIE __at(0x7CEE);


extern volatile __bit ADIF __at(0x7CF6);


extern volatile __bit ADIP __at(0x7CFE);


extern volatile __bit ADON __at(0x7E10);


extern volatile __bit ADPNT0 __at(0x7E08);


extern volatile __bit ADPNT1 __at(0x7E09);


extern volatile __bit ADRS0 __at(0x7CD6);


extern volatile __bit ADRS1 __at(0x7CD7);


extern volatile __bit AN0 __at(0x7C00);


extern volatile __bit AN1 __at(0x7C01);


extern volatile __bit AN2 __at(0x7C02);


extern volatile __bit AN3 __at(0x7C03);


extern volatile __bit AN4 __at(0x7C04);


extern volatile __bit AN5 __at(0x7C05);


extern volatile __bit ANS0 __at(0x7DC0);


extern volatile __bit ANS1 __at(0x7DC1);


extern volatile __bit ANS2 __at(0x7DC2);


extern volatile __bit ANS3 __at(0x7DC3);


extern volatile __bit ANS4 __at(0x7DC4);


extern volatile __bit ANS5 __at(0x7DC5);


extern volatile __bit ANS6 __at(0x7DC6);


extern volatile __bit ANS7 __at(0x7DC7);


extern volatile __bit ANS8 __at(0x7DC8);


extern volatile __bit BF __at(0x7E38);


extern volatile __bit BFEMT __at(0x7E0B);


extern volatile __bit BFOVFL __at(0x7E0A);


extern volatile __bit BOR __at(0x7E80);


extern volatile __bit BRFEN __at(0x7B67);


extern volatile __bit BRG16 __at(0x7D53);


extern volatile __bit BRGH __at(0x7D62);


extern volatile __bit BRGH1 __at(0x7D62);


extern volatile __bit CAP1M0 __at(0x7B18);


extern volatile __bit CAP1M1 __at(0x7B19);


extern volatile __bit CAP1M2 __at(0x7B1A);


extern volatile __bit CAP1M3 __at(0x7B1B);


extern volatile __bit CAP1REN __at(0x7B1E);


extern volatile __bit CAP1TMR __at(0x7B1D);


extern volatile __bit CAP2M0 __at(0x7B10);


extern volatile __bit CAP2M1 __at(0x7B11);


extern volatile __bit CAP2M2 __at(0x7B12);


extern volatile __bit CAP2M3 __at(0x7B13);


extern volatile __bit CAP2REN __at(0x7B16);


extern volatile __bit CAP2TMR __at(0x7B15);


extern volatile __bit CAP3M0 __at(0x7B08);


extern volatile __bit CAP3M1 __at(0x7B09);


extern volatile __bit CAP3M2 __at(0x7B0A);


extern volatile __bit CAP3M3 __at(0x7B0B);


extern volatile __bit CAP3REN __at(0x7B0E);


extern volatile __bit CAP3TMR __at(0x7B0D);


extern volatile __bit CARRY __at(0x7EC0);


extern volatile __bit CCP1 __at(0x7C12);


extern volatile __bit CCP10 __at(0x7C22);


extern volatile __bit CCP1IE __at(0x7CEA);


extern volatile __bit CCP1IF __at(0x7CF2);


extern volatile __bit CCP1IP __at(0x7CFA);


extern volatile __bit CCP1M0 __at(0x7DE8);


extern volatile __bit CCP1M1 __at(0x7DE9);


extern volatile __bit CCP1M2 __at(0x7DEA);


extern volatile __bit CCP1M3 __at(0x7DEB);


extern volatile __bit CCP1X __at(0x7DED);


extern volatile __bit CCP1Y __at(0x7DEC);


extern volatile __bit CCP2 __at(0x7C11);


extern volatile __bit CCP2IE __at(0x7D00);


extern volatile __bit CCP2IF __at(0x7D08);


extern volatile __bit CCP2IP __at(0x7D10);


extern volatile __bit CCP2M0 __at(0x7DD0);


extern volatile __bit CCP2M1 __at(0x7DD1);


extern volatile __bit CCP2M2 __at(0x7DD2);


extern volatile __bit CCP2M3 __at(0x7DD3);


extern volatile __bit CCP2X __at(0x7DD5);


extern volatile __bit CCP2Y __at(0x7DD4);


extern volatile __bit CCP2_PA2 __at(0x7C0B);


extern volatile __bit CCP9E __at(0x7C23);


extern volatile __bit CFGS __at(0x7D36);


extern volatile __bit CHSN3 __at(0x7E0B);


extern volatile __bit CK __at(0x7C16);


extern volatile __bit CKE __at(0x7E3E);


extern volatile __bit CKP __at(0x7E34);


extern volatile __bit CLKI __at(0x7C07);


extern volatile __bit CLKO __at(0x7C06);


extern volatile __bit CREN __at(0x7D5C);


extern volatile __bit CS __at(0x7C22);


extern volatile __bit CSRC __at(0x7D67);


extern volatile __bit CSRC1 __at(0x7D67);


extern volatile __bit DA __at(0x7E3D);


extern volatile __bit DATA_ADDRESS __at(0x7E3D);


extern volatile __bit DC __at(0x7EC1);


extern volatile __bit DC1B0 __at(0x7DEC);


extern volatile __bit DC1B1 __at(0x7DED);


extern volatile __bit DC2B0 __at(0x7DD4);


extern volatile __bit DC2B1 __at(0x7DD5);


extern volatile __bit DONE __at(0x7E11);


extern volatile __bit DOWN __at(0x7DB5);


extern volatile __bit DT __at(0x7C17);


extern volatile __bit DT0 __at(0x7B68);


extern volatile __bit DT1 __at(0x7B69);


extern volatile __bit DT2 __at(0x7B6A);


extern volatile __bit DT3 __at(0x7B6B);


extern volatile __bit DT4 __at(0x7B6C);


extern volatile __bit DT5 __at(0x7B6D);


extern volatile __bit DTA0 __at(0x7B68);


extern volatile __bit DTA1 __at(0x7B69);


extern volatile __bit DTA2 __at(0x7B6A);


extern volatile __bit DTA3 __at(0x7B6B);


extern volatile __bit DTA4 __at(0x7B6C);


extern volatile __bit DTA5 __at(0x7B6D);


extern volatile __bit DTAPS0 __at(0x7B6E);


extern volatile __bit DTAPS1 __at(0x7B6F);


extern volatile __bit DTPS0 __at(0x7B6E);


extern volatile __bit DTPS1 __at(0x7B6F);


extern volatile __bit D_A __at(0x7E3D);


extern volatile __bit D_NOT_A __at(0x7E3D);


extern volatile __bit D_nA __at(0x7E3D);


extern volatile __bit EBDIS __at(0x7E5F);


extern volatile __bit EEFS __at(0x7D36);


extern volatile __bit EEIE __at(0x7D04);


extern volatile __bit EEIF __at(0x7D0C);


extern volatile __bit EEIP __at(0x7D14);


extern volatile __bit EEPGD __at(0x7D37);


extern volatile __bit FERR __at(0x7D5A);


extern volatile __bit FFOVFL __at(0x7E0A);


extern volatile __bit FIFOEN __at(0x7E0C);


extern volatile __bit FLT1EN __at(0x7B03);


extern volatile __bit FLT2EN __at(0x7B04);


extern volatile __bit FLT3EN __at(0x7B05);


extern volatile __bit FLT4EN __at(0x7B06);


extern volatile __bit FLTA __at(0x7C11);


extern volatile __bit FLTAEN __at(0x7B60);


extern volatile __bit FLTAMOD __at(0x7B61);


extern volatile __bit FLTAS __at(0x7B62);


extern volatile __bit FLTB __at(0x7C12);


extern volatile __bit FLTBEN __at(0x7B64);


extern volatile __bit FLTBMOD __at(0x7B65);


extern volatile __bit FLTBS __at(0x7B66);


extern volatile __bit FLTCK0 __at(0x7B00);


extern volatile __bit FLTCK1 __at(0x7B01);


extern volatile __bit FLTCK2 __at(0x7B02);


extern volatile __bit FLTCON __at(0x7B63);


extern volatile __bit FLTS __at(0x7E9A);


extern volatile __bit FREE __at(0x7D34);


extern volatile __bit GASEL0 __at(0x7CC8);


extern volatile __bit GASEL1 __at(0x7CC9);


extern volatile __bit GBSEL0 __at(0x7CCC);


extern volatile __bit GBSEL1 __at(0x7CCD);


extern volatile __bit GCSEL0 __at(0x7CCA);


extern volatile __bit GCSEL1 __at(0x7CCB);


extern volatile __bit GDSEL0 __at(0x7CCE);


extern volatile __bit GDSEL1 __at(0x7CCF);


extern volatile __bit GIE __at(0x7F97);


extern volatile __bit GIEH __at(0x7F97);


extern volatile __bit GIEL __at(0x7F96);


extern volatile __bit GIE_GIEH __at(0x7F97);


extern volatile __bit GO __at(0x7E11);


extern volatile __bit GODONE __at(0x7E11);


extern volatile __bit GO_DONE __at(0x7E11);


extern volatile __bit GO_NOT_DONE __at(0x7E11);


extern volatile __bit GO_nDONE __at(0x7E11);


extern volatile __bit IC1IE __at(0x7D19);


extern volatile __bit IC1IF __at(0x7D21);


extern volatile __bit IC1IP __at(0x7D29);


extern volatile __bit IC2QEIE __at(0x7D1A);


extern volatile __bit IC2QEIF __at(0x7D22);


extern volatile __bit IC2QEIP __at(0x7D2A);


extern volatile __bit IC3DRIE __at(0x7D1B);


extern volatile __bit IC3DRIF __at(0x7D23);


extern volatile __bit IC3DRIP __at(0x7D2B);


extern volatile __bit IDLEN __at(0x7E9F);


extern volatile __bit INT0 __at(0x7C13);


extern volatile __bit INT0E __at(0x7F94);


extern volatile __bit INT0F __at(0x7F91);


extern volatile __bit INT0IE __at(0x7F94);


extern volatile __bit INT0IF __at(0x7F91);


extern volatile __bit INT1 __at(0x7C14);


extern volatile __bit INT1E __at(0x7F83);


extern volatile __bit INT1F __at(0x7F80);


extern volatile __bit INT1IE __at(0x7F83);


extern volatile __bit INT1IF __at(0x7F80);


extern volatile __bit INT1IP __at(0x7F86);


extern volatile __bit INT1P __at(0x7F86);


extern volatile __bit INT2 __at(0x7C15);


extern volatile __bit INT2E __at(0x7F84);


extern volatile __bit INT2F __at(0x7F81);


extern volatile __bit INT2IE __at(0x7F84);


extern volatile __bit INT2IF __at(0x7F81);


extern volatile __bit INT2IP __at(0x7F87);


extern volatile __bit INT2P __at(0x7F87);


extern volatile __bit INTEDG0 __at(0x7F8E);


extern volatile __bit INTEDG1 __at(0x7F8D);


extern volatile __bit INTEDG2 __at(0x7F8C);


extern volatile __bit IOFS __at(0x7E9A);


extern volatile __bit IPEN __at(0x7E87);


extern volatile __bit IRCF0 __at(0x7E9C);


extern volatile __bit IRCF1 __at(0x7E9D);


extern volatile __bit IRCF2 __at(0x7E9E);


extern volatile __bit IRVST __at(0x7E95);


extern volatile __bit IVRST __at(0x7E95);


extern volatile __bit LA0 __at(0x7C48);


extern volatile __bit LA1 __at(0x7C49);


extern volatile __bit LA2 __at(0x7C4A);


extern volatile __bit LA3 __at(0x7C4B);


extern volatile __bit LA4 __at(0x7C4C);


extern volatile __bit LA5 __at(0x7C4D);


extern volatile __bit LA6 __at(0x7C4E);


extern volatile __bit LA7 __at(0x7C4F);


extern volatile __bit LATA0 __at(0x7C48);


extern volatile __bit LATA1 __at(0x7C49);


extern volatile __bit LATA2 __at(0x7C4A);


extern volatile __bit LATA3 __at(0x7C4B);


extern volatile __bit LATA4 __at(0x7C4C);


extern volatile __bit LATA5 __at(0x7C4D);


extern volatile __bit LATA6 __at(0x7C4E);


extern volatile __bit LATA7 __at(0x7C4F);


extern volatile __bit LATB0 __at(0x7C50);


extern volatile __bit LATB1 __at(0x7C51);


extern volatile __bit LATB2 __at(0x7C52);


extern volatile __bit LATB3 __at(0x7C53);


extern volatile __bit LATB4 __at(0x7C54);


extern volatile __bit LATB5 __at(0x7C55);


extern volatile __bit LATB6 __at(0x7C56);


extern volatile __bit LATB7 __at(0x7C57);


extern volatile __bit LATC0 __at(0x7C58);


extern volatile __bit LATC1 __at(0x7C59);


extern volatile __bit LATC2 __at(0x7C5A);


extern volatile __bit LATC3 __at(0x7C5B);


extern volatile __bit LATC4 __at(0x7C5C);


extern volatile __bit LATC5 __at(0x7C5D);


extern volatile __bit LATC6 __at(0x7C5E);


extern volatile __bit LATC7 __at(0x7C5F);


extern volatile __bit LATD0 __at(0x7C60);


extern volatile __bit LATD1 __at(0x7C61);


extern volatile __bit LATD2 __at(0x7C62);


extern volatile __bit LATD3 __at(0x7C63);


extern volatile __bit LATD4 __at(0x7C64);


extern volatile __bit LATD5 __at(0x7C65);


extern volatile __bit LATD6 __at(0x7C66);


extern volatile __bit LATD7 __at(0x7C67);


extern volatile __bit LATE0 __at(0x7C68);


extern volatile __bit LATE1 __at(0x7C69);


extern volatile __bit LATE2 __at(0x7C6A);


extern volatile __bit LB0 __at(0x7C50);


extern volatile __bit LB1 __at(0x7C51);


extern volatile __bit LB2 __at(0x7C52);


extern volatile __bit LB3 __at(0x7C53);


extern volatile __bit LB4 __at(0x7C54);


extern volatile __bit LB5 __at(0x7C55);


extern volatile __bit LB6 __at(0x7C56);


extern volatile __bit LB7 __at(0x7C57);


extern volatile __bit LC0 __at(0x7C58);


extern volatile __bit LC1 __at(0x7C59);


extern volatile __bit LC2 __at(0x7C5A);


extern volatile __bit LC3 __at(0x7C5B);


extern volatile __bit LC4 __at(0x7C5C);


extern volatile __bit LC5 __at(0x7C5D);


extern volatile __bit LC6 __at(0x7C5E);


extern volatile __bit LC7 __at(0x7C5F);


extern volatile __bit LD0 __at(0x7C60);


extern volatile __bit LD1 __at(0x7C61);


extern volatile __bit LD2 __at(0x7C62);


extern volatile __bit LD3 __at(0x7C63);


extern volatile __bit LD4 __at(0x7C64);


extern volatile __bit LD5 __at(0x7C65);


extern volatile __bit LD6 __at(0x7C66);


extern volatile __bit LD7 __at(0x7C67);


extern volatile __bit LE0 __at(0x7C68);


extern volatile __bit LE1 __at(0x7C69);


extern volatile __bit LE2 __at(0x7C6A);


extern volatile __bit LVDEN __at(0x7E94);


extern volatile __bit LVDIE __at(0x7D02);


extern volatile __bit LVDIF __at(0x7D0A);


extern volatile __bit LVDIN __at(0x7C05);


extern volatile __bit LVDIP __at(0x7D12);


extern volatile __bit LVDL0 __at(0x7E90);


extern volatile __bit LVDL1 __at(0x7E91);


extern volatile __bit LVDL2 __at(0x7E92);


extern volatile __bit LVDL3 __at(0x7E93);


extern volatile __bit MCLR __at(0x7C23);


extern volatile __bit NEGATIVE __at(0x7EC4);


extern volatile __bit NOT_A __at(0x7E3D);


extern volatile __bit NOT_ADDRESS __at(0x7E3D);


extern volatile __bit NOT_BOR __at(0x7E80);


extern volatile __bit NOT_DONE __at(0x7E11);


extern volatile __bit NOT_DOWN __at(0x7DB5);


extern volatile __bit NOT_FLTA __at(0x7C11);


extern volatile __bit NOT_FLTB __at(0x7C12);


extern volatile __bit NOT_IPEN __at(0x7E87);


extern volatile __bit NOT_MCLR __at(0x7C23);


extern volatile __bit NOT_PD __at(0x7E82);


extern volatile __bit NOT_POR __at(0x7E81);


extern volatile __bit NOT_RBPU __at(0x7F8F);


extern volatile __bit NOT_RESEN __at(0x7DBE);


extern volatile __bit NOT_RI __at(0x7E84);


extern volatile __bit NOT_SS __at(0x7C16);


extern volatile __bit NOT_T1SYNC __at(0x7E6A);


extern volatile __bit NOT_T5SYNC __at(0x7DBA);


extern volatile __bit NOT_TO __at(0x7E83);


extern volatile __bit NOT_VELM __at(0x7DB7);


extern volatile __bit NOT_W __at(0x7E3A);


extern volatile __bit NOT_WRITE __at(0x7E3A);


extern volatile __bit OERR __at(0x7D59);


extern volatile __bit OSC1 __at(0x7C07);


extern volatile __bit OSC2 __at(0x7C06);


extern volatile __bit OSFIE __at(0x7D07);


extern volatile __bit OSFIF __at(0x7D0F);


extern volatile __bit OSFIP __at(0x7D17);


extern volatile __bit OSTS __at(0x7E9B);


extern volatile __bit OSYNC __at(0x7B70);


extern volatile __bit OV __at(0x7EC3);


extern volatile __bit OVERFLOW __at(0x7EC3);


extern volatile __bit PA1 __at(0x7C12);


extern volatile __bit PA2 __at(0x7C11);


extern volatile __bit PB2 __at(0x7C22);


extern volatile __bit PC2 __at(0x7C21);


extern volatile __bit PC3E __at(0x7C23);


extern volatile __bit PD __at(0x7E82);


extern volatile __bit PD2 __at(0x7C20);


extern volatile __bit PDEC0 __at(0x7DB0);


extern volatile __bit PDEC1 __at(0x7DB1);


extern volatile __bit PEIE __at(0x7F96);


extern volatile __bit PEIE_GIEL __at(0x7F96);


extern volatile __bit PMOD0 __at(0x7B78);


extern volatile __bit PMOD1 __at(0x7B79);


extern volatile __bit PMOD2 __at(0x7B7A);


extern volatile __bit PMOD3 __at(0x7B7B);


extern volatile __bit POR __at(0x7E81);


extern volatile __bit POUT0 __at(0x7B50);


extern volatile __bit POUT1 __at(0x7B51);


extern volatile __bit POUT2 __at(0x7B52);


extern volatile __bit POUT3 __at(0x7B53);


extern volatile __bit POUT4 __at(0x7B54);


extern volatile __bit POUT5 __at(0x7B55);


extern volatile __bit POUT6 __at(0x7B56);


extern volatile __bit POUT7 __at(0x7B57);


extern volatile __bit POVD0 __at(0x7B58);


extern volatile __bit POVD1 __at(0x7B59);


extern volatile __bit POVD2 __at(0x7B5A);


extern volatile __bit POVD3 __at(0x7B5B);


extern volatile __bit POVD4 __at(0x7B5C);


extern volatile __bit POVD5 __at(0x7B5D);


extern volatile __bit POVD6 __at(0x7B5E);


extern volatile __bit POVD7 __at(0x7B5F);


extern volatile __bit PSA __at(0x7EAB);


extern volatile __bit PTCKPS0 __at(0x7BFA);


extern volatile __bit PTCKPS1 __at(0x7BFB);


extern volatile __bit PTDIR __at(0x7BF6);


extern volatile __bit PTEN __at(0x7BF7);


extern volatile __bit PTIE __at(0x7D1C);


extern volatile __bit PTIF __at(0x7D24);


extern volatile __bit PTIP __at(0x7D2C);


extern volatile __bit PTMOD0 __at(0x7BF8);


extern volatile __bit PTMOD1 __at(0x7BF9);


extern volatile __bit PTOPS0 __at(0x7BFC);


extern volatile __bit PTOPS1 __at(0x7BFD);


extern volatile __bit PTOPS2 __at(0x7BFE);


extern volatile __bit PTOPS3 __at(0x7BFF);


extern volatile __bit PWMEN0 __at(0x7B7C);


extern volatile __bit PWMEN1 __at(0x7B7D);


extern volatile __bit PWMEN2 __at(0x7B7E);


extern volatile __bit QEIM0 __at(0x7DB2);


extern volatile __bit QEIM1 __at(0x7DB3);


extern volatile __bit QEIM2 __at(0x7DB4);


extern volatile __bit QERR __at(0x7DB6);


extern volatile __bit __attribute__((__deprecated__)) RA0 __at(0x7C00);


extern volatile __bit __attribute__((__deprecated__)) RA1 __at(0x7C01);


extern volatile __bit __attribute__((__deprecated__)) RA2 __at(0x7C02);


extern volatile __bit __attribute__((__deprecated__)) RA3 __at(0x7C03);


extern volatile __bit __attribute__((__deprecated__)) RA4 __at(0x7C04);


extern volatile __bit __attribute__((__deprecated__)) RA5 __at(0x7C05);


extern volatile __bit __attribute__((__deprecated__)) RA6 __at(0x7C06);


extern volatile __bit __attribute__((__deprecated__)) RA7 __at(0x7C07);


extern volatile __bit __attribute__((__deprecated__)) RB0 __at(0x7C08);


extern volatile __bit __attribute__((__deprecated__)) RB1 __at(0x7C09);


extern volatile __bit __attribute__((__deprecated__)) RB2 __at(0x7C0A);


extern volatile __bit __attribute__((__deprecated__)) RB3 __at(0x7C0B);


extern volatile __bit __attribute__((__deprecated__)) RB4 __at(0x7C0C);


extern volatile __bit __attribute__((__deprecated__)) RB5 __at(0x7C0D);


extern volatile __bit __attribute__((__deprecated__)) RB6 __at(0x7C0E);


extern volatile __bit __attribute__((__deprecated__)) RB7 __at(0x7C0F);


extern volatile __bit RBIE __at(0x7F93);


extern volatile __bit RBIF __at(0x7F90);


extern volatile __bit RBIP __at(0x7F88);


extern volatile __bit RBPU __at(0x7F8F);


extern volatile __bit __attribute__((__deprecated__)) RC0 __at(0x7C10);


extern volatile __bit __attribute__((__deprecated__)) RC1 __at(0x7C11);


extern volatile __bit RC1IE __at(0x7CED);


extern volatile __bit RC1IF __at(0x7CF5);


extern volatile __bit RC1IP __at(0x7CFD);


extern volatile __bit __attribute__((__deprecated__)) RC2 __at(0x7C12);


extern volatile __bit __attribute__((__deprecated__)) RC3 __at(0x7C13);


extern volatile __bit __attribute__((__deprecated__)) RC4 __at(0x7C14);


extern volatile __bit __attribute__((__deprecated__)) RC5 __at(0x7C15);


extern volatile __bit __attribute__((__deprecated__)) RC6 __at(0x7C16);


extern volatile __bit __attribute__((__deprecated__)) RC7 __at(0x7C17);


extern volatile __bit RC8_9 __at(0x7D5E);


extern volatile __bit RC9 __at(0x7D5E);


extern volatile __bit RCD8 __at(0x7D58);


extern volatile __bit RCIDL __at(0x7D56);


extern volatile __bit RCIE __at(0x7CED);


extern volatile __bit RCIF __at(0x7CF5);


extern volatile __bit RCIP __at(0x7CFD);


extern volatile __bit RCMT __at(0x7D56);


extern volatile __bit RD __at(0x7D30);


extern volatile __bit __attribute__((__deprecated__)) RD0 __at(0x7C18);


extern volatile __bit __attribute__((__deprecated__)) RD1 __at(0x7C19);


extern volatile __bit RD16 __at(0x7E6F);


extern volatile __bit RD165 __at(0x7DB9);


extern volatile __bit __attribute__((__deprecated__)) RD2 __at(0x7C1A);


extern volatile __bit __attribute__((__deprecated__)) RD3 __at(0x7C1B);


extern volatile __bit __attribute__((__deprecated__)) RD4 __at(0x7C1C);


extern volatile __bit __attribute__((__deprecated__)) RD5 __at(0x7C1D);


extern volatile __bit __attribute__((__deprecated__)) RD6 __at(0x7C1E);


extern volatile __bit __attribute__((__deprecated__)) RD7 __at(0x7C1F);


extern volatile __bit RDE __at(0x7C20);


extern volatile __bit __attribute__((__deprecated__)) RE0 __at(0x7C20);


extern volatile __bit __attribute__((__deprecated__)) RE1 __at(0x7C21);


extern volatile __bit __attribute__((__deprecated__)) RE2 __at(0x7C22);


extern volatile __bit RE3 __at(0x7C23);


extern volatile __bit READ_WRITE __at(0x7E3A);


extern volatile __bit RESEN __at(0x7DBE);


extern volatile __bit RI __at(0x7E84);


extern volatile __bit RJPU __at(0x7C07);


extern volatile __bit RW __at(0x7E3A);


extern volatile __bit RX __at(0x7C17);


extern volatile __bit RX9 __at(0x7D5E);


extern volatile __bit RX9D __at(0x7D58);


extern volatile __bit RXB0IE __at(0x7D18);


extern volatile __bit RXB1IE __at(0x7D19);


extern volatile __bit RXBNIE __at(0x7D19);


extern volatile __bit RXBNIF __at(0x7D21);


extern volatile __bit RXBNIP __at(0x7D29);


extern volatile __bit RXCKP __at(0x7D55);


extern volatile __bit RXDTP __at(0x7D55);


extern volatile __bit R_NOT_W __at(0x7E3A);


extern volatile __bit R_W __at(0x7E3A);


extern volatile __bit R_nW __at(0x7E3A);


extern volatile __bit SASEL0 __at(0x7CC8);


extern volatile __bit SASEL1 __at(0x7CC9);


extern volatile __bit SBSEL0 __at(0x7CCC);


extern volatile __bit SBSEL1 __at(0x7CCD);


extern volatile __bit SCK __at(0x7C15);


extern volatile __bit SCKP __at(0x7D54);


extern volatile __bit SCL __at(0x7C15);


extern volatile __bit SCS0 __at(0x7E98);


extern volatile __bit SCS1 __at(0x7E99);


extern volatile __bit SCSEL0 __at(0x7CCA);


extern volatile __bit SCSEL1 __at(0x7CCB);


extern volatile __bit SDA __at(0x7C14);


extern volatile __bit SDI __at(0x7C14);


extern volatile __bit SDO __at(0x7C17);


extern volatile __bit SDSEL0 __at(0x7CCE);


extern volatile __bit SDSEL1 __at(0x7CCF);


extern volatile __bit SENDB __at(0x7D63);


extern volatile __bit SENDB1 __at(0x7D63);


extern volatile __bit SEVOPS0 __at(0x7B74);


extern volatile __bit SEVOPS1 __at(0x7B75);


extern volatile __bit SEVOPS2 __at(0x7B76);


extern volatile __bit SEVOPS3 __at(0x7B77);


extern volatile __bit SEVTDIR __at(0x7B73);


extern volatile __bit SMP __at(0x7E3F);


extern volatile __bit SOSCEN __at(0x7E6B);


extern volatile __bit SOSCEN5 __at(0x7DBB);


extern volatile __bit SPEN __at(0x7D5F);


extern volatile __bit SREN __at(0x7D5D);


extern volatile __bit SRENA __at(0x7D5D);


extern volatile __bit SS __at(0x7C16);


extern volatile __bit SS2 __at(0x7C1F);


extern volatile __bit SSPEN __at(0x7E35);


extern volatile __bit SSPIE __at(0x7CEB);


extern volatile __bit SSPIF __at(0x7CF3);


extern volatile __bit SSPIP __at(0x7CFB);


extern volatile __bit SSPM0 __at(0x7E30);


extern volatile __bit SSPM1 __at(0x7E31);


extern volatile __bit SSPM2 __at(0x7E32);


extern volatile __bit SSPM3 __at(0x7E33);


extern volatile __bit SSPOV __at(0x7E36);


extern volatile __bit SSRC0 __at(0x7CD0);


extern volatile __bit SSRC1 __at(0x7CD1);


extern volatile __bit SSRC2 __at(0x7CD2);


extern volatile __bit SSRC3 __at(0x7CD3);


extern volatile __bit SSRC4 __at(0x7CD4);


extern volatile __bit START __at(0x7E3B);


extern volatile __bit STKFUL __at(0x7FE7);


extern volatile __bit STKOVF __at(0x7FE7);


extern volatile __bit STKPTR0 __at(0x7FE0);


extern volatile __bit STKPTR1 __at(0x7FE1);


extern volatile __bit STKPTR2 __at(0x7FE2);


extern volatile __bit STKPTR3 __at(0x7FE3);


extern volatile __bit STKPTR4 __at(0x7FE4);


extern volatile __bit STKUNF __at(0x7FE6);


extern volatile __bit STOP __at(0x7E3C);


extern volatile __bit SWDTEN __at(0x7E88);


extern volatile __bit SYNC __at(0x7D64);


extern volatile __bit SYNC1 __at(0x7D64);


extern volatile __bit T016BIT __at(0x7EAE);


extern volatile __bit T0CKI __at(0x7C13);


extern volatile __bit T0CS __at(0x7EAD);


extern volatile __bit T0IE __at(0x7F95);


extern volatile __bit T0IF __at(0x7F92);


extern volatile __bit T0IP __at(0x7F8A);


extern volatile __bit T0PS0 __at(0x7EA8);


extern volatile __bit T0PS1 __at(0x7EA9);


extern volatile __bit T0PS2 __at(0x7EAA);


extern volatile __bit T0PS3 __at(0x7EAB);


extern volatile __bit T0SE __at(0x7EAC);


extern volatile __bit T13CKI __at(0x7C10);


extern volatile __bit T1CKPS0 __at(0x7E6C);


extern volatile __bit T1CKPS1 __at(0x7E6D);


extern volatile __bit T1INSYNC __at(0x7E6A);


extern volatile __bit T1OSCEN __at(0x7E6B);


extern volatile __bit T1OSI __at(0x7C11);


extern volatile __bit T1OSO __at(0x7C10);


extern volatile __bit T1RD16 __at(0x7E6F);


extern volatile __bit T1RUN __at(0x7E6E);


extern volatile __bit T1SYNC __at(0x7E6A);


extern volatile __bit T2CKPS0 __at(0x7E50);


extern volatile __bit T2CKPS1 __at(0x7E51);


extern volatile __bit T2OUTPS0 __at(0x7E53);


extern volatile __bit T2OUTPS1 __at(0x7E54);


extern volatile __bit T2OUTPS2 __at(0x7E55);


extern volatile __bit T2OUTPS3 __at(0x7E56);


extern volatile __bit T5CKI __at(0x7C13);


extern volatile __bit T5MOD __at(0x7DBD);


extern volatile __bit T5PS0 __at(0x7DBB);


extern volatile __bit T5PS1 __at(0x7DBC);


extern volatile __bit T5SEN __at(0x7DBF);


extern volatile __bit T5SYNC __at(0x7DBA);


extern volatile __bit TBIE __at(0x7CEC);


extern volatile __bit TBIF __at(0x7CF4);


extern volatile __bit TBIP __at(0x7CFC);


extern volatile __bit TMR0IE __at(0x7F95);


extern volatile __bit TMR0IF __at(0x7F92);


extern volatile __bit TMR0IP __at(0x7F8A);


extern volatile __bit TMR0ON __at(0x7EAF);


extern volatile __bit TMR1CS __at(0x7E69);


extern volatile __bit TMR1IE __at(0x7CE8);


extern volatile __bit TMR1IF __at(0x7CF0);


extern volatile __bit TMR1IP __at(0x7CF8);


extern volatile __bit TMR1ON __at(0x7E68);


extern volatile __bit TMR2IE __at(0x7CE9);


extern volatile __bit TMR2IF __at(0x7CF1);


extern volatile __bit TMR2IP __at(0x7CF9);


extern volatile __bit TMR2ON __at(0x7E52);


extern volatile __bit TMR5CS __at(0x7DB9);


extern volatile __bit TMR5IE __at(0x7D18);


extern volatile __bit TMR5IF __at(0x7D20);


extern volatile __bit TMR5IP __at(0x7D28);


extern volatile __bit TMR5ON __at(0x7DB8);


extern volatile __bit TO __at(0x7E83);


extern volatile __bit TOUTPS0 __at(0x7E53);


extern volatile __bit TOUTPS1 __at(0x7E54);


extern volatile __bit TOUTPS2 __at(0x7E55);


extern volatile __bit TOUTPS3 __at(0x7E56);


extern volatile __bit TRISA0 __at(0x7C90);


extern volatile __bit TRISA1 __at(0x7C91);


extern volatile __bit TRISA2 __at(0x7C92);


extern volatile __bit TRISA3 __at(0x7C93);


extern volatile __bit TRISA4 __at(0x7C94);


extern volatile __bit TRISA5 __at(0x7C95);


extern volatile __bit TRISA6 __at(0x7C96);


extern volatile __bit TRISA7 __at(0x7C97);


extern volatile __bit TRISB0 __at(0x7C98);


extern volatile __bit TRISB1 __at(0x7C99);


extern volatile __bit TRISB2 __at(0x7C9A);


extern volatile __bit TRISB3 __at(0x7C9B);


extern volatile __bit TRISB4 __at(0x7C9C);


extern volatile __bit TRISB5 __at(0x7C9D);


extern volatile __bit TRISB6 __at(0x7C9E);


extern volatile __bit TRISB7 __at(0x7C9F);


extern volatile __bit TRISC0 __at(0x7CA0);


extern volatile __bit TRISC1 __at(0x7CA1);


extern volatile __bit TRISC2 __at(0x7CA2);


extern volatile __bit TRISC3 __at(0x7CA3);


extern volatile __bit TRISC4 __at(0x7CA4);


extern volatile __bit TRISC5 __at(0x7CA5);


extern volatile __bit TRISC6 __at(0x7CA6);


extern volatile __bit TRISC7 __at(0x7CA7);


extern volatile __bit TRISD0 __at(0x7CA8);


extern volatile __bit TRISD1 __at(0x7CA9);


extern volatile __bit TRISD2 __at(0x7CAA);


extern volatile __bit TRISD3 __at(0x7CAB);


extern volatile __bit TRISD4 __at(0x7CAC);


extern volatile __bit TRISD5 __at(0x7CAD);


extern volatile __bit TRISD6 __at(0x7CAE);


extern volatile __bit TRISD7 __at(0x7CAF);


extern volatile __bit TRISE0 __at(0x7CB0);


extern volatile __bit TRISE1 __at(0x7CB1);


extern volatile __bit TRISE2 __at(0x7CB2);


extern volatile __bit TRMT __at(0x7D61);


extern volatile __bit TRMT1 __at(0x7D61);


extern volatile __bit TUN0 __at(0x7CD8);


extern volatile __bit TUN1 __at(0x7CD9);


extern volatile __bit TUN2 __at(0x7CDA);


extern volatile __bit TUN3 __at(0x7CDB);


extern volatile __bit TUN4 __at(0x7CDC);


extern volatile __bit TUN5 __at(0x7CDD);


extern volatile __bit TX __at(0x7C16);


extern volatile __bit TX1IE __at(0x7CEC);


extern volatile __bit TX1IF __at(0x7CF4);


extern volatile __bit TX1IP __at(0x7CFC);


extern volatile __bit TX8_9 __at(0x7D66);


extern volatile __bit TX9 __at(0x7D66);


extern volatile __bit TX91 __at(0x7D66);


extern volatile __bit TX9D __at(0x7D60);


extern volatile __bit TX9D1 __at(0x7D60);


extern volatile __bit TXB0IE __at(0x7D1A);


extern volatile __bit TXB1IE __at(0x7D1B);


extern volatile __bit TXB2IE __at(0x7D1C);


extern volatile __bit TXBNIE __at(0x7D1C);


extern volatile __bit TXBNIF __at(0x7D24);


extern volatile __bit TXBNIP __at(0x7D2C);


extern volatile __bit TXCKP __at(0x7D54);


extern volatile __bit TXD8 __at(0x7D60);


extern volatile __bit TXEN __at(0x7D65);


extern volatile __bit TXEN1 __at(0x7D65);


extern volatile __bit TXIE __at(0x7CEC);


extern volatile __bit TXIF __at(0x7CF4);


extern volatile __bit TXIP __at(0x7CFC);


extern volatile __bit UA __at(0x7E39);


extern volatile __bit UDIS __at(0x7B71);


extern volatile __bit ULPWUIN __at(0x7C00);


extern volatile __bit UP __at(0x7DB5);


extern volatile __bit UPDOWN __at(0x7DB5);


extern volatile __bit UP_DOWN __at(0x7DB5);


extern volatile __bit UP_NOT_DOWN __at(0x7DB5);


extern volatile __bit UP_nDOWN __at(0x7DB5);


extern volatile __bit VCFG0 __at(0x7E0E);


extern volatile __bit VCFG01 __at(0x7E0C);


extern volatile __bit VCFG1 __at(0x7E0F);


extern volatile __bit VELM __at(0x7DB7);


extern volatile __bit VREFM __at(0x7C02);


extern volatile __bit VREFP __at(0x7C03);


extern volatile __bit W4E __at(0x7D51);


extern volatile __bit WAIT0 __at(0x7E5C);


extern volatile __bit WAIT1 __at(0x7E5D);


extern volatile __bit WCOL __at(0x7E37);


extern volatile __bit WDTW __at(0x7E8F);


extern volatile __bit WM0 __at(0x7E58);


extern volatile __bit WM1 __at(0x7E59);


extern volatile __bit WR __at(0x7D31);


extern volatile __bit WRE __at(0x7C21);


extern volatile __bit WREN __at(0x7D32);


extern volatile __bit WRERR __at(0x7D33);


extern volatile __bit WUE __at(0x7D51);


extern volatile __bit ZERO __at(0x7EC2);


extern volatile __bit nA __at(0x7E3D);


extern volatile __bit nADDRESS __at(0x7E3D);


extern volatile __bit nBOR __at(0x7E80);


extern volatile __bit nDONE __at(0x7E11);


extern volatile __bit nDOWN __at(0x7DB5);


extern volatile __bit nFLTA __at(0x7C11);


extern volatile __bit nFLTB __at(0x7C12);


extern volatile __bit nIPEN __at(0x7E87);


extern volatile __bit nMCLR __at(0x7C23);


extern volatile __bit nPD __at(0x7E82);


extern volatile __bit nPOR __at(0x7E81);


extern volatile __bit nRBPU __at(0x7F8F);


extern volatile __bit nRESEN __at(0x7DBE);


extern volatile __bit nRI __at(0x7E84);


extern volatile __bit nSS __at(0x7C16);


extern volatile __bit nT1SYNC __at(0x7E6A);


extern volatile __bit nT5SYNC __at(0x7DBA);


extern volatile __bit nTO __at(0x7E83);


extern volatile __bit nVELM __at(0x7DB7);


extern volatile __bit nW __at(0x7E3A);


extern volatile __bit nWRITE __at(0x7E3A);

# 18 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8\pic\include\pic18.h"
__attribute__((__unsupported__("The " "flash_write" " routine is no longer supported. Please use the MPLAB X MCC."))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
__attribute__((__unsupported__("The " "EraseFlash" " routine is no longer supported. Please use the MPLAB X MCC."))) void EraseFlash(unsigned long startaddr, unsigned long endaddr);


# 49
#pragma intrinsic(__nop)
extern void __nop(void);

# 158
__attribute__((__unsupported__("The " "Read_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) unsigned char Read_b_eep(unsigned int badd);
__attribute__((__unsupported__("The " "Busy_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Busy_eep(void);
__attribute__((__unsupported__("The " "Write_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Write_b_eep(unsigned int badd, unsigned char bdat);

# 190
__attribute__((__unsupported__("The READTIMER" "3" "() macro is not available with the current device."))) unsigned short __readtimer3(void);



unsigned char __t1rd16on(void);
unsigned char __t3rd16on(void);


# 202
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(unsigned long);
#pragma intrinsic(_delay3)
extern __nonreentrant void _delay3(unsigned char);

# 4 "C:/Program Files/Microchip/MPLABX/v5.50/packs/Microchip/PIC18Fxxxx_DFP/1.2.26/xc8\pic\include\__size_t.h"
typedef unsigned size_t;

# 7 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\stdlib.h"
typedef unsigned short wchar_t;

# 15
typedef struct {
int rem;
int quot;
} div_t;
typedef struct {
unsigned rem;
unsigned quot;
} udiv_t;
typedef struct {
long quot;
long rem;
} ldiv_t;
typedef struct {
unsigned long quot;
unsigned long rem;
} uldiv_t;

# 65
extern double atof(const char *);
extern double strtod(const char *, const char **);
extern int atoi(const char *);
extern unsigned xtoi(const char *);
extern long atol(const char *);

# 73
extern long strtol(const char *, char **, int);

extern int rand(void);
extern void srand(unsigned int);
extern void * calloc(size_t, size_t);
extern div_t div(int numer, int denom);
extern udiv_t udiv(unsigned numer, unsigned denom);
extern ldiv_t ldiv(long numer, long denom);
extern uldiv_t uldiv(unsigned long numer,unsigned long denom);

# 85
extern unsigned long _lrotl(unsigned long value, unsigned int shift);
extern unsigned long _lrotr(unsigned long value, unsigned int shift);
extern unsigned int _rotl(unsigned int value, unsigned int shift);
extern unsigned int _rotr(unsigned int value, unsigned int shift);




extern void * malloc(size_t);
extern void free(void *);
extern void * realloc(void *, size_t);

# 104
extern int atexit(void (*)(void));
extern char * getenv(const char *);
extern char ** environ;
extern int system(char *);
extern void qsort(void *, size_t, size_t, int (*)(const void *, const void *));
extern void * bsearch(const void *, void *, size_t, size_t, int(*)(const void *, const void *));
extern int abs(int);
extern long labs(long);

extern char * itoa(char * buf, int val, int base);
extern char * utoa(char * buf, unsigned val, int base);




extern char * ltoa(char * buf, long val, int base);
extern char * ultoa(char * buf, unsigned long val, int base);

extern char * ftoa(float f, int * status);

# 7 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\stdarg.h"
typedef void * va_list[1];

#pragma intrinsic(__va_start)
extern void * __va_start(void);

#pragma intrinsic(__va_arg)
extern void * __va_arg(void *, ...);

# 43 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\stdio.h"
struct __prbuf
{
char * ptr;
void (* func)(char);
};

# 29 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\errno.h"
extern int errno;

# 12 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\conio.h"
extern void init_uart(void);

extern char getch(void);
extern char getche(void);
extern void putch(char);
extern void ungetch(char);

extern __bit kbhit(void);

# 23
extern char * cgets(char *);
extern void cputs(const char *);

# 88 "C:\Program Files\Microchip\xc8\v2.32\pic\include\c90\stdio.h"
extern int cprintf(char *, ...);
#pragma printf_check(cprintf)



extern int _doprnt(struct __prbuf *, const register char *, register va_list);


# 180
#pragma printf_check(vprintf) const
#pragma printf_check(vsprintf) const

extern char * gets(char *);
extern int puts(const char *);
extern int scanf(const char *, ...) __attribute__((unsupported("scanf() is not supported by this compiler")));
extern int sscanf(const char *, const char *, ...) __attribute__((unsupported("sscanf() is not supported by this compiler")));
extern int vprintf(const char *, va_list) __attribute__((unsupported("vprintf() is not supported by this compiler")));
extern int vsprintf(char *, const char *, va_list) __attribute__((unsupported("vsprintf() is not supported by this compiler")));
extern int vscanf(const char *, va_list ap) __attribute__((unsupported("vscanf() is not supported by this compiler")));
extern int vsscanf(const char *, const char *, va_list) __attribute__((unsupported("vsscanf() is not supported by this compiler")));

#pragma printf_check(printf) const
#pragma printf_check(sprintf) const
extern int sprintf(char *, const char *, ...);
extern int printf(const char *, ...);

# 93 "motorMain.c"
unsigned char w = "u";
unsigned int count = 0;
unsigned int count2 = 0;
char *str;
unsigned int number = 100;
unsigned char digit = 0;
char stringBuffer[20];
float speed = 0; float a = 0; float b = 0;
float sum_err = 0;
int speedPID = 0;

void setupUART(void);
char rx_char(void);
void tx_char(char );
void setupQEI(void);
void setupTimer5(void);
void setupTimer0(void);
void SPI_Init_Slave();
void SPI_Init_Master();
void setupTimer2(void);
void setupPWM(void);
unsigned char motorOutMSB(float);
unsigned char motorOutLSB(float);
float PID(int);
long RPM_CONSTANT_QEI = 93750;

signed char WriteSPI( unsigned char data_out ) {
unsigned char TempVar;
TempVar = SSPBUF;
PIR1bits.SSPIF = 0;
SSPCON1bits.WCOL = 0;
SSPBUF = data_out;
if (SSPCON1 & 0x80)
return -1;
else
while( !PIR1bits.SSPIF );
return 0;
}


unsigned char ReadSPI( void ) {
unsigned char TempVar;
TempVar = SSPBUF;
PIR1bits.SSPIF = 0;
SSPBUF = 0x00;
while(!PIR1bits.SSPIF);
return (SSPBUF);
}

float medianF(float a, float b, float c) {
float middle;
if ((a <= b) && (a <= c))
{
middle = (b <= c) ? b : c;
}
else if ((b <= a) && (b <= c))
{
middle = (a <= c) ? a : c;
}
else
{
middle = (a <= b) ? a : b;
}
return middle;
}

void interrupt ISR() {

if(IC2QEIE && IC2QEIF) {
speed = speed + 1;
IC2QEIF = 0;
}
if(INTCONbits.TMR0IF) {
if (count == 1) {
a = speed;
speed = 0;
}
if (count == 2) {
b = speed;
speed = 0;
}
if (count == 3) {
count = 0;
speed = medianF(a,b,speed);
speedPID = (int)(speed*11.4);
WriteSPI(speedPID);
CCPR1L = motorOutMSB(PID(180));
CCP1CONbits.DC1B = motorOutLSB(PID(180));
speed = 0;
count = 0;
}
count++;
INTCONbits.TMR0IF = 0;
}

}

void main(void) {

INTCONbits.GIE = 1; INTCONbits.PEIE = 1;

setupQEI();
setupTimer5();
setupTimer0();
setupPWM();
SPI_Init_Slave();
while(1) {

}
return;
}


void setupQEI(void) {
DFLTCONbits.FLT3EN = 1;
DFLTCONbits.FLT2EN = 1;
DFLTCONbits.FLTCK = 0;

QEICONbits.nVELM = 1;

QEICONbits.QEIM2 = 1;
QEICONbits.QEIM1 = 1;
QEICONbits.QEIM0 = 0;
CAP3BUFH = 0x00; CAP3BUFL = 1;

QEICONbits.PDEC0 = 0;
QEICONbits.PDEC1 = 0;
PIE3bits.IC2QEIE = 1;

}

void setupTimer0(void) {
INTCONbits.TMR0IE = 1;
T0CONbits.T016BIT = 1;
T0CONbits.T0CS = 0;


T0CONbits.PSA = 0;
T0CONbits.T0PS2 = 1;
T0CONbits.T0PS1 = 1;
T0CONbits.T0PS0 = 1;
TMR0 = 0;
T0CONbits.TMR0ON = 1;
}

void setupTimer1(void) {
PIE1bits.TMR1IE = 1;
T1CONbits.RD16 = 1;
T1CONbits.TMR1CS = 0;


T1CONbits.T1CKPS1 = 1;
T1CONbits.T1CKPS0 = 1;
TMR1 = 0;
T1CONbits.TMR1ON = 1;
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

TRISDbits.TRISD2 = 1;
TRISDbits.TRISD3 = 0;
TRISDbits.TRISD1 = 0;


CS = 1;
SSPSTAT=0x40;
SSPCON1=0x24;

# 271
PIR1bits.SSPIF=0;

# 275
ADCON0=0;

# 277
ADCON1=0x0F;
}

void SPI_Init_Slave() {

TRISCbits.TRISC4 = 1;
TRISCbits.TRISC5 = 1;
TRISCbits.TRISC6 = 1;
TRISCbits.TRISC7 = 0;


CS = 1;
SSPSTAT=0x40;
SSPCON1=0x24;

# 292
PIR1bits.SSPIF=0;

# 296
ADCON0=0;

# 298
ADCON1=0x0F;
}

void setupUART(void) {
TRISCbits.RC6 = 0;
TRISCbits.RC7 = 1;
TXSTAbits.BRGH = 0;
TXSTAbits.SYNC = 0;
TXSTAbits.TXEN = 1;
RCSTAbits.SPEN = 1;
RCSTAbits.CREN = 1;
PIE1bits.RCIE = 1;
PIE1bits.TXIE = 0;
SPBRG = 31;
}

void setupPWM(void) {

TRISCbits.RC2 = 0;
TRISCbits.RC6 = 1;
PR2 = 0xFF;
setupTimer2();

CCP1CONbits.CCP1M3 = 1;
CCP1CONbits.CCP1M2 = 1;

TRISCbits.RC0 = 0;
TRISCbits.RC1 = 0;
PORTCbits.RC0 = 1;
PORTCbits.RC1 = 0;
}

void setupTimer2(void) {

T2CON = 0;
T2CONbits.T2CKPS0 = 1;
T2CONbits.T2CKPS1 = 1;
T2CONbits.TMR2ON = 1;
}

unsigned char motorOutMSB(float duty) {
int buffer = 10.239*duty;
unsigned char bufferChar = buffer >> 2;
return bufferChar;
}

unsigned char motorOutLSB(float duty) {
int buffer = 10.239*duty;
unsigned char bufferChar = buffer & 0b00000011;
return bufferChar;
}

float PID(int ref) {
float duty = 0;
float Kp = 0.7;
float Ki = 0.045;
float err = speedPID - ref;
sum_err = sum_err + err;

if (sum_err > 2000) sum_err = 2000;
if (sum_err < -2000) sum_err = -2000;
duty = Kp*err + Ki*sum_err;

if(duty>100) duty = 100;
if(duty<-100) duty = -100;

if(duty<0) {
PORTCbits.RC0 = 1;
PORTCbits.RC1 = 0;
}
if(duty>0) {
PORTCbits.RC0 = 0;
PORTCbits.RC1 = 1;
}
return abs(duty);
}

char rx_char(void) {
while(!RCIF);
return RCREG;
}

void tx_char(char a) {
TXREG=a;
while(!TRMT);
}
