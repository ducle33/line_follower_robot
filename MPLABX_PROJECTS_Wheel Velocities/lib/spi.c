/********************************************/
/*      SPI.c                               */
/********************************************/

void OpenSPI( unsigned char sync_mode, unsigned char bus_mode, unsigned char smp_phase)
{
    SSPSTAT &= 0x3F;                // power on state
    SSPCON1 = 0x00;                 // power on state
    SSPCON1 |= sync_mode;           // select serial mode       (0b00000010 - SPI Master mode, clock = Fosc/64)
    SSPSTAT |= smp_phase;           // select data input sample phase

    switch( bus_mode )
      {
        case 0:                       // SPI bus mode 0,0
          SSP1STATbits.CKE = 1;       // data transmitted on rising edge
          break;    
        case 2:                       // SPI bus mode 1,0
          SSP1STATbits.CKE = 1;       // data transmitted on falling edge
          SSP1CON1bits.CKP = 1;       // clock idle state high
          break;
        case 3:                       // SPI bus mode 1,1
          SSP1CON1bits.CKP = 1;       // clock idle state high
          break;
        default:                      // default SPI bus mode 0,1
          break;
      }
      
    switch( sync_mode )
      {
        case 4:                         // slave mode w /SS enable
              TRIS_SCK  = 1;            // define clock pin as input    
              TRIS_CS  = 1;        // define /SS1 pin as input
            break;
    
        case 5:                   // slave mode w/o /SS enable
            TRIS_SCK  = 1;        // define clock pin as input    
            break;
        
        default:                 // master mode, define clock pin as output
            TRIS_SCK  = 0;       // define clock pin as output    
             break;
      }
      
    TRIS_SDI = 1;               // define SDI input
    TRIS_SDO = 0;               //SD0 as output   
    
    SSPCON1 |= 0x20;          // enable synchronous serial port,  0b00100000  Enable serial port and configures SCK, SDO, SDI
}


signed char WriteSPI( unsigned char data_out )
{
    unsigned char TempVar;
    TempVar = SSPBUF;           // Clears BF
    PIR1bits.SSPIF = 0;         // Clear interrupt flag
    SSPCON1bits.WCOL = 0;            //Clear any previous write collision
    SSPBUF = data_out;           // write byte to SSPBUF register
    if ( SSPCON1 & 0x80 )        // test if write collision occurred
        return ( -1 );              // if WCOL bit is set return negative #
    else
        while( !PIR1bits.SSPIF );  // wait until bus cycle complete
    return ( 0 );                // if WCOL bit is not set return non-negative#
}


unsigned char ReadSPI( void )
{
  unsigned char TempVar;
  TempVar = SSPBUF;        // Clear BF
  PIR1bits.SSPIF = 0;      // Clear interrupt flag
  SSPBUF = 0x00;           // initiate bus cycle
  while(!PIR1bits.SSPIF);  // wait until cycle complete
  return ( SSPBUF );       // return with byte read
}

unsigned char DataRdySPI( void )
{
  if ( SSPSTATbits.BF )
    return ( +1 );                // data in SSPBUF register
  else
    return ( 0 );                 // no data in SSPBUF register
}