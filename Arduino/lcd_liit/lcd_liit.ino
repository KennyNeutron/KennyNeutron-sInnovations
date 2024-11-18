


#include <EEPROM.h>
#define F_CPU 16000000
#include <avr/io.h>
#include <avr/delay.h>

#define DDR_SPI DDRB
#define DD_MOSI PB5
#define DD_SCK PB7
#define SPI_CS PB4
/*
PIN USAGE
1.GND
2.3.3V
3. CS PIN 10
4.CLK PIN 13
5.DATA PIN 11
6.CLR PIN 12
7.3.3V BACKLIGHT
8.GND
*/

void SPI_MasterInit(void)
{
	/* Set MOSI and SCK output, all others input */
	DDR_SPI = (1<<DD_MOSI)|(1<<DD_SCK)|(1<<SPI_CS);
	/* Enable SPI, Master, set clock rate fck/128 */
	SPCR = (1<<SPE)|(1<<MSTR)|(1<<SPR0)|(1<<SPR1)|(1<<CPOL)|(1<<CPHA);
	
}

void SPI_MasterTransmit(char cData)
{
	/* Start transmission */
	SPDR = cData;
	/* Wait for transmission complete */
	while(!(SPSR & (1<<SPIF)))
	;
}

int main(void)
{
	SPI_MasterInit();
	PORTB |= 0x10;
	
	// initialization
	_delay_ms(500);
	PORTB &= ~0x10;
	SPI_MasterTransmit(0x0C);	// display ON
	_delay_ms(1);
	SPI_MasterTransmit(0x34);	// XENT=1
	PORTB |= 0x10;
	_delay_ms(1000);
	
	
    while(1)
    {
        //TODO:: Please write your application code 
		//	PORTB &= ~0x10;
			SPI_MasterTransmit(0x01);	// cursor home
			_delay_ms(3);
			SPI_MasterTransmit(0x87);	// 0x80 + number of characters-1
			SPI_MasterTransmit(0x31);
			SPI_MasterTransmit(0x32);
			SPI_MasterTransmit(0x33);
			SPI_MasterTransmit(0x34);
			SPI_MasterTransmit(0x35);
			SPI_MasterTransmit(0x36);
			SPI_MasterTransmit(0x37);
			SPI_MasterTransmit(0x38);
			//SPI_MasterTransmit(0x39);
			PORTB |= 0x10;
			_delay_ms(1000);
			PORTB &= ~0x10;
			SPI_MasterTransmit(0x01);	// cursor home
			_delay_ms(3);
			SPI_MasterTransmit(0x86);
			SPI_MasterTransmit('E');
			SPI_MasterTransmit('-');
			SPI_MasterTransmit('G');
			//SPI_MasterTransmit('L');
			SPI_MasterTransmit('I');
			SPI_MasterTransmit('Z');
			SPI_MasterTransmit('M');
			SPI_MasterTransmit('O');			
			PORTB |= 0x11;
			_delay_ms(1000);

	
    }
}
