/********************************************/
/*      SPI.h                               */
/********************************************/

#define TRIS_SDI TRISCbits.TRISC4       // DIRECTION define SDI input
#define TRIS_SCK TRISCbits.TRISC3      // DIRECTION define clock pin as output
#define TRIS_CS TRISAbits.TRISB5       // DIRECTION CS - RA5
#define TRIS_SDO TRISCbits.TRISC5      //DIRECTION SD0 as output

void OpenSPI( unsigned char sync_mode, unsigned char bus_mode, unsigned char smp_phase);
signed char WriteSPI( unsigned char data_out );
unsigned char ReadSPI( void );
unsigned char DataRdySPI( void );