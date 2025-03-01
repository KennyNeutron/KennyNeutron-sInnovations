//************************************************************************************
//**  
//**  File name:     D:\KennyNeutronsInnovations\ScoreBoard\Flowcode\ScoreBoardDMTester.c
//**  Title:         
//**  Description:   
//**  
//**  Generated by:  Flowcode v5.2.0.0
//**  Date:          Tuesday, March 05, 2019 02:28:48
//**  Licence:       Professional
//**  Registered to: xyz
//**  Licence key:   WUK7B9
//**  
//**  
//**  http://www.matrixmultimedia.com
//**  
//************************************************************************************


#define MX_PIC

#define MX_USES_UINT8 1
#define MX_USES_SINT16 0
#define MX_USES_CHAR 0
#define MX_USES_FLOAT 0
#define MX_USES_SINT32 0
#define MX_USES_BOOL 1
#define MX_USES_UINT16 0
#define MX_USES_UINT32 0
//Defines for microcontroller
#define P16F887
#define FC_CAL_PIC
#define MX_ADC
#define MX_ADC_TYPE_7
#define MX_ADC_BITS_10
#define MX_EE
#define MX_EE_TYPE2
#define MX_EE_SIZE 256
#define MX_SPI_1
#define MX_SPI_1_MISO_PORT portc
#define MX_SPI_1_MISO_TRIS trisc
#define MX_SPI_1_MISO_PIN 4
#define MX_SPI_1_MOSI_PORT portc
#define MX_SPI_1_MOSI_TRIS trisc
#define MX_SPI_1_MOSI_PIN 5
#define MX_SPI_1_CLK_PORT portc
#define MX_SPI_1_CLK_TRIS trisc
#define MX_SPI_1_CLK_PIN 3
#define MX_SPI_1_SS_PORT portc
#define MX_SPI_1_SS_TRIS trisc
#define MX_UART_1
#define MX_UART_1_TX_PORT portc
#define MX_UART_1_TX_TRIS trisc
#define MX_UART_1_TX_PIN 6
#define MX_UART_1_RX_PORT portc
#define MX_UART_1_RX_TRIS trisc
#define MX_UART_1_RX_PIN 7
#define MX_I2C
#define MX_MI2C
#define MX_I2C_1
#define MX_I2C_1_SDA_PORT portc
#define MX_I2C_1_SDA_TRIS trisc
#define MX_I2C_1_SDA_PIN 4
#define MX_I2C_1_SCL_PORT portc
#define MX_I2C_1_SCL_TRIS trisc
#define MX_I2C_1_SCL_PIN 3
#define MX_PWM
#define MX_PWM_CNT 2
#define MX_PWM_PSCA1
#define MX_PWM_PSCA4
#define MX_PWM_PSCA16
#define MX_PWM_1_PORT portc
#define MX_PWM_1_TRIS trisc
#define MX_PWM_1_PIN 2
#define MX_PWM_2_PORT portc
#define MX_PWM_2_TRIS trisc
#define MX_PWM_2_PIN 1

//Functions
#define MX_CLK_SPEED 20000000
#ifdef _BOOSTC
#include <system.h>
#endif
#ifdef HI_TECH_C
#include <pic.h>
#endif

//Configuration data
#ifdef _BOOSTC
#pragma DATA 0x2007, 0x20c2
#endif
#ifdef HI_TECH_C
__CONFIG(0x20c2);
#endif
#ifdef _BOOSTC
#pragma DATA 0x2008, 0x3eff
#endif
#ifdef HI_TECH_C
__CONFIG(0x3eff);
#endif

//Internal functions
#include "C:\Program Files (x86)\Flowcode\v5\FCD\internals.c"

//Macro function declarations
void FCM_off_all();
void FCM_data_bank();
void FCM_latch();
void FCM_score_data_register();
void FCM_display_score();
void FCM_display_time();
void FCM_time_data_register();
void FCM_foulperiod_data_register();
void FCM_foulperiod_display();


//Variable declarations
#define FCV_TRUE (1)
#define FCV_FALSE (0)
MX_UINT8 FCV_HOME_ONES = (0x0);
MX_BOOL FCV_DAT;
MX_UINT8 FCV_SECONDS;
MX_UINT8 FCV_PERIOD = (0x0);
MX_UINT8 FCV_MINUTES = (0x0);
MX_UINT8 FCV_HOME_FOUL = (0x0);
MX_UINT8 FCV_MINUTE_TENS;
MX_UINT8 FCV_AWAY_TENS = (0x0);
MX_UINT8 FCV_BITS = (0x0);
MX_UINT8 FCV_SECONDS_TENS;
MX_UINT8 FCV_SCORE_AWAY = (0x0);
MX_UINT8 FCV_DIGIT = (0x0);
MX_BOOL FCV_HOME_HUNDRED = (0);
MX_UINT8 FCV_MINUTE_ONES;
MX_UINT8 FCV_AWAY_ONES;
MX_UINT8 FCV_HOME_TENS = (0x0);
MX_UINT8 FCV_SECONDS_ONES;
MX_UINT8 FCV_SCORE_HOME;
MX_BOOL FCV_AWAY_HUNDREDS = (0);
MX_UINT8 FCV_IHAP = (0x0);
MX_UINT8 FCV_AWAY_FOUL = (0x0);

MX_UINT8 FCLV_LOOP1;
MX_UINT8 FCLV_LOOP2;
MX_UINT8 FCLV_LOOP3;


#include "C:\Program Files (x86)\Flowcode\v5\CAL\includes.c"

//Macro implementations


void FCM_off_all()
{

	//Digit2
	//Output: 0 -> D0
	trisd = trisd & 0xFE;
	if ((0))
		portd = (portd & 0xFE) | 0x01;
	else
		portd = portd & 0xFE;

	//Digit1
	//Output: 0 -> D1
	trisd = trisd & 0xFD;
	if ((0))
		portd = (portd & 0xFD) | 0x02;
	else
		portd = portd & 0xFD;

}


void FCM_data_bank()
{

	//Switch
	//Switch: digit?
	switch (FCV_DIGIT)
	{
		case 1:
		{
			//Calculation
			//Calculation:
			//  bits = 0b00000110
			FCV_BITS = 6;

			break;
		}
		case 2:
		{
			//Calculation
			//Calculation:
			//  bits = 0b01011011
			FCV_BITS = 91;

			break;
		}
		case 3:
		{
			//Calculation
			//Calculation:
			//  bits = 0b01001111
			FCV_BITS = 79;

			break;
		}
		case 4:
		{
			//Calculation
			//Calculation:
			//  bits = 0b01100110
			FCV_BITS = 102;

			break;
		}
		case 5:
		{
			//Calculation
			//Calculation:
			//  bits = 0b01101101
			FCV_BITS = 109;

			break;
		}
		case 6:
		{
			//Calculation
			//Calculation:
			//  bits = 0b01111101
			FCV_BITS = 125;

			break;
		}
		case 7:
		{
			//Calculation
			//Calculation:
			//  bits = 0b00000111
			FCV_BITS = 7;

			break;
		}
		case 8:
		{
			//Calculation
			//Calculation:
			//  bits = 0b01111111
			FCV_BITS = 127;

			break;
		}
		case 9:
		{
			//Calculation
			//Calculation:
			//  bits = 0b01101111
			FCV_BITS = 111;

			break;
		}
		case 0:
		{
			//Calculation
			//Calculation:
			//  bits = 0b00111111
			FCV_BITS = 63;

			break;
		}
		// default:

	}

}


void FCM_latch()
{

	//reg
	//Output: 1 -> C1
	trisc = trisc & 0xFD;
	if ((1))
		portc = (portc & 0xFD) | 0x02;
	else
		portc = portc & 0xFD;

	//reg
	//Output: 0 -> C1
	trisc = trisc & 0xFD;
	if ((0))
		portc = (portc & 0xFD) | 0x02;
	else
		portc = portc & 0xFD;

}


void FCM_score_data_register()
{

	//Loop
	//Loop: Loop 8 times
	for (FCLV_LOOP1=0; FCLV_LOOP1<8; FCLV_LOOP1++)
	{

		//Calculation
		//Calculation:
		//  dat = bits AND 1
		FCV_DAT = FCV_BITS & 1;

		//score_data
		//Output: dat -> C3
		trisc = trisc & 0xF7;
		if ((FCV_DAT))
			portc = (portc & 0xF7) | 0x08;
		else
			portc = portc & 0xF7;

		//clk
		//Output: 1 -> C0
		trisc = trisc & 0xFE;
		if ((1))
			portc = (portc & 0xFE) | 0x01;
		else
			portc = portc & 0xFE;

		//clk
		//Output: 0 -> C0
		trisc = trisc & 0xFE;
		if ((0))
			portc = (portc & 0xFE) | 0x01;
		else
			portc = portc & 0xFE;

		//Calculation
		//Calculation:
		//  bits = bits >> 1
		FCV_BITS = FCV_BITS >> 1;


	}

}


void FCM_display_score()
{

	//Call Macro
	//Call Macro: off_all()
	FCM_off_all();

	//Calculation
	//Calculation:
	//  digit = away_ones
	FCV_DIGIT = FCV_AWAY_ONES;

	//Call Macro
	//Call Macro: data_bank()
	FCM_data_bank();

	//Call Macro
	//Call Macro: score_data_register()
	FCM_score_data_register();

	//Calculation
	//Calculation:
	//  digit = home_ones
	FCV_DIGIT = FCV_HOME_ONES;

	//Call Macro
	//Call Macro: data_bank()
	FCM_data_bank();

	//Call Macro
	//Call Macro: score_data_register()
	FCM_score_data_register();

	//Call Macro
	//Call Macro: latch()
	FCM_latch();

	//Digit2
	//Output: 0 -> D0
	trisd = trisd & 0xFE;
	if ((0))
		portd = (portd & 0xFE) | 0x01;
	else
		portd = portd & 0xFE;

	//Digit1
	//Output: 1 -> D1
	trisd = trisd & 0xFD;
	if ((1))
		portd = (portd & 0xFD) | 0x02;
	else
		portd = portd & 0xFD;

	//Delay
	//Delay: 1 ms
	delay_ms(1);

	//Comment:
	//END of Digit1

	//Call Macro
	//Call Macro: off_all()
	FCM_off_all();

	//Calculation
	//Calculation:
	//  digit = away_tens
	FCV_DIGIT = FCV_AWAY_TENS;

	//Call Macro
	//Call Macro: data_bank()
	FCM_data_bank();

	//Call Macro
	//Call Macro: score_data_register()
	FCM_score_data_register();

	//Calculation
	//Calculation:
	//  digit = home_tens
	FCV_DIGIT = FCV_HOME_TENS;

	//Call Macro
	//Call Macro: data_bank()
	FCM_data_bank();

	//Call Macro
	//Call Macro: score_data_register()
	FCM_score_data_register();

	//Call Macro
	//Call Macro: latch()
	FCM_latch();

	//Digit2
	//Output: 1 -> D0
	trisd = trisd & 0xFE;
	if ((1))
		portd = (portd & 0xFE) | 0x01;
	else
		portd = portd & 0xFE;

	//Digit1
	//Output: 0 -> D1
	trisd = trisd & 0xFD;
	if ((0))
		portd = (portd & 0xFD) | 0x02;
	else
		portd = portd & 0xFD;

	//Delay
	//Delay: 1 ms
	delay_ms(1);

}


void FCM_display_time()
{

	//Call Macro
	//Call Macro: off_all()
	FCM_off_all();

	//Calculation
	//Calculation:
	//  digit = minute_ones
	FCV_DIGIT = FCV_MINUTE_ONES;

	//Call Macro
	//Call Macro: data_bank()
	FCM_data_bank();

	//Call Macro
	//Call Macro: time_data_register()
	FCM_time_data_register();

	//Calculation
	//Calculation:
	//  digit = seconds_ones
	FCV_DIGIT = FCV_SECONDS_ONES;

	//Call Macro
	//Call Macro: data_bank()
	FCM_data_bank();

	//Call Macro
	//Call Macro: time_data_register()
	FCM_time_data_register();

	//Call Macro
	//Call Macro: latch()
	FCM_latch();

	//Digit2
	//Output: 0 -> D0
	trisd = trisd & 0xFE;
	if ((0))
		portd = (portd & 0xFE) | 0x01;
	else
		portd = portd & 0xFE;

	//Digit1
	//Output: 1 -> D1
	trisd = trisd & 0xFD;
	if ((1))
		portd = (portd & 0xFD) | 0x02;
	else
		portd = portd & 0xFD;

	//Delay
	//Delay: 1 ms
	delay_ms(1);

	//Comment:
	//END of Digit1

	//Call Macro
	//Call Macro: off_all()
	FCM_off_all();

	//Calculation
	//Calculation:
	//  digit = minute_tens
	FCV_DIGIT = FCV_MINUTE_TENS;

	//Call Macro
	//Call Macro: data_bank()
	FCM_data_bank();

	//Call Macro
	//Call Macro: time_data_register()
	FCM_time_data_register();

	//Calculation
	//Calculation:
	//  digit = seconds_tens
	FCV_DIGIT = FCV_SECONDS_TENS;

	//Call Macro
	//Call Macro: data_bank()
	FCM_data_bank();

	//Call Macro
	//Call Macro: time_data_register()
	FCM_time_data_register();

	//Call Macro
	//Call Macro: latch()
	FCM_latch();

	//Digit2
	//Output: 1 -> D0
	trisd = trisd & 0xFE;
	if ((1))
		portd = (portd & 0xFE) | 0x01;
	else
		portd = portd & 0xFE;

	//Digit1
	//Output: 0 -> D1
	trisd = trisd & 0xFD;
	if ((0))
		portd = (portd & 0xFD) | 0x02;
	else
		portd = portd & 0xFD;

	//Delay
	//Delay: 1 ms
	delay_ms(1);

}


void FCM_time_data_register()
{

	//Loop
	//Loop: Loop 8 times
	for (FCLV_LOOP2=0; FCLV_LOOP2<8; FCLV_LOOP2++)
	{

		//Calculation
		//Calculation:
		//  dat = bits AND 1
		FCV_DAT = FCV_BITS & 1;

		//time_data
		//Output: dat -> C2
		trisc = trisc & 0xFB;
		if ((FCV_DAT))
			portc = (portc & 0xFB) | 0x04;
		else
			portc = portc & 0xFB;

		//clk
		//Output: 1 -> C0
		trisc = trisc & 0xFE;
		if ((1))
			portc = (portc & 0xFE) | 0x01;
		else
			portc = portc & 0xFE;

		//clk
		//Output: 0 -> C0
		trisc = trisc & 0xFE;
		if ((0))
			portc = (portc & 0xFE) | 0x01;
		else
			portc = portc & 0xFE;

		//Calculation
		//Calculation:
		//  bits = bits >> 1
		FCV_BITS = FCV_BITS >> 1;


	}

}


void FCM_foulperiod_data_register()
{

	//Loop
	//Loop: Loop 8 times
	for (FCLV_LOOP3=0; FCLV_LOOP3<8; FCLV_LOOP3++)
	{

		//Calculation
		//Calculation:
		//  dat = bits AND 1
		FCV_DAT = FCV_BITS & 1;

		//foulperiod_data
		//Output: dat -> C4
		trisc = trisc & 0xEF;
		if ((FCV_DAT))
			portc = (portc & 0xEF) | 0x10;
		else
			portc = portc & 0xEF;

		//clk
		//Output: 1 -> C0
		trisc = trisc & 0xFE;
		if ((1))
			portc = (portc & 0xFE) | 0x01;
		else
			portc = portc & 0xFE;

		//clk
		//Output: 0 -> C0
		trisc = trisc & 0xFE;
		if ((0))
			portc = (portc & 0xFE) | 0x01;
		else
			portc = portc & 0xFE;

		//Calculation
		//Calculation:
		//  bits = bits >> 1
		FCV_BITS = FCV_BITS >> 1;


	}

}


void FCM_foulperiod_display()
{

	//Call Macro
	//Call Macro: off_all()
	FCM_off_all();

	//Calculation
	//Calculation:
	//  digit = away_foul
	FCV_DIGIT = FCV_AWAY_FOUL;

	//Call Macro
	//Call Macro: data_bank()
	FCM_data_bank();

	//Call Macro
	//Call Macro: foulperiod_data_register()
	FCM_foulperiod_data_register();

	//Calculation
	//Calculation:
	//  digit = period
	FCV_DIGIT = FCV_PERIOD;

	//Call Macro
	//Call Macro: data_bank()
	FCM_data_bank();

	//Call Macro
	//Call Macro: foulperiod_data_register()
	FCM_foulperiod_data_register();

	//Call Macro
	//Call Macro: latch()
	FCM_latch();

	//Digit2
	//Output: 0 -> D0
	trisd = trisd & 0xFE;
	if ((0))
		portd = (portd & 0xFE) | 0x01;
	else
		portd = portd & 0xFE;

	//Digit1
	//Output: 1 -> D1
	trisd = trisd & 0xFD;
	if ((1))
		portd = (portd & 0xFD) | 0x02;
	else
		portd = portd & 0xFD;

	//Delay
	//Delay: 1 ms
	delay_ms(1);

	//Call Macro
	//Call Macro: off_all()
	FCM_off_all();

	//Calculation
	//Calculation:
	//  digit = home_foul
	FCV_DIGIT = FCV_HOME_FOUL;

	//Call Macro
	//Call Macro: data_bank()
	FCM_data_bank();

	//Call Macro
	//Call Macro: foulperiod_data_register()
	FCM_foulperiod_data_register();

	//Calculation
	//Calculation:
	//  digit = period
	FCV_DIGIT = FCV_PERIOD;

	//Call Macro
	//Call Macro: data_bank()
	FCM_data_bank();

	//Call Macro
	//Call Macro: foulperiod_data_register()
	FCM_foulperiod_data_register();

	//Call Macro
	//Call Macro: latch()
	FCM_latch();

	//Digit2
	//Output: 1 -> D0
	trisd = trisd & 0xFE;
	if ((1))
		portd = (portd & 0xFE) | 0x01;
	else
		portd = portd & 0xFE;

	//Digit1
	//Output: 0 -> D1
	trisd = trisd & 0xFD;
	if ((0))
		portd = (portd & 0xFD) | 0x02;
	else
		portd = portd & 0xFD;

	//Delay
	//Delay: 1 ms
	delay_ms(1);

}



void main()
{
	//Initialization
	ansel = 0;
anselh = 0;


	//Interrupt initialization code
	option_reg = 0xC0;


	//Home_ONE
	//Output: 0 -> D2
	trisd = trisd & 0xFB;
	if ((0))
		portd = (portd & 0xFB) | 0x04;
	else
		portd = portd & 0xFB;

	//Guest_ONE
	//Output: 0 -> D3
	trisd = trisd & 0xF7;
	if ((0))
		portd = (portd & 0xF7) | 0x08;
	else
		portd = portd & 0xF7;

	//clk
	//Output: 0 -> C0
	trisc = trisc & 0xFE;
	if ((0))
		portc = (portc & 0xFE) | 0x01;
	else
		portc = portc & 0xFE;

	//reg
	//Output: 0 -> C1
	trisc = trisc & 0xFD;
	if ((0))
		portc = (portc & 0xFD) | 0x02;
	else
		portc = portc & 0xFD;

	//Digit2
	//Output: 0 -> D0
	trisd = trisd & 0xFE;
	if ((0))
		portd = (portd & 0xFE) | 0x01;
	else
		portd = portd & 0xFE;

	//Digit1
	//Output: 1 -> D1
	trisd = trisd & 0xFD;
	if ((1))
		portd = (portd & 0xFD) | 0x02;
	else
		portd = portd & 0xFD;

	//Dot
	//Output: 0 -> D5
	trisd = trisd & 0xDF;
	if ((0))
		portd = (portd & 0xDF) | 0x20;
	else
		portd = portd & 0xDF;

	//Colon
	//Output: 1 -> D4
	trisd = trisd & 0xEF;
	if ((1))
		portd = (portd & 0xEF) | 0x10;
	else
		portd = portd & 0xEF;

	//home_one
	//Output: 1 -> D2
	trisd = trisd & 0xFB;
	if ((1))
		portd = (portd & 0xFB) | 0x04;
	else
		portd = portd & 0xFB;

	//away_one
	//Output: 1 -> D3
	trisd = trisd & 0xF7;
	if ((1))
		portd = (portd & 0xF7) | 0x08;
	else
		portd = portd & 0xF7;

	//Loop
	//Loop: While 1
	while (1)
	{

		//Calculation
		//Calculation:
		//  score_away = 56
		//  score_home = 78
		FCV_SCORE_AWAY = 56;
		FCV_SCORE_HOME = 78;

		//Calculation
		//Calculation:
		//  away_tens = score_away / 10
		//  away_ones = score_away % 10
		//  home_tens = score_home / 10
		//  home_ones = score_home % 10
		FCV_AWAY_TENS = FCV_SCORE_AWAY / 10;
		FCV_AWAY_ONES = FCV_SCORE_AWAY % 10;
		FCV_HOME_TENS = FCV_SCORE_HOME / 10;
		FCV_HOME_ONES = FCV_SCORE_HOME % 10;

		//Call Macro
		//Call Macro: display_score()
		FCM_display_score();

		//Calculation
		//Calculation:
		//  minutes = 12
		//  seconds = 34
		FCV_MINUTES = 12;
		FCV_SECONDS = 34;

		//Calculation
		//Calculation:
		//  minute_tens = minutes / 10
		//  minute_ones = minutes % 10
		//  seconds_tens = seconds / 10
		//  seconds_ones = seconds % 10
		FCV_MINUTE_TENS = FCV_MINUTES / 10;
		FCV_MINUTE_ONES = FCV_MINUTES % 10;
		FCV_SECONDS_TENS = FCV_SECONDS / 10;
		FCV_SECONDS_ONES = FCV_SECONDS % 10;

		//Call Macro
		//Call Macro: display_time()
		FCM_display_time();

		//Calculation
		//Calculation:
		//  away_foul = 9
		//  home_foul = 8
		//  period = 3
		FCV_AWAY_FOUL = 9;
		FCV_HOME_FOUL = 8;
		FCV_PERIOD = 3;

		//Call Macro
		//Call Macro: foulperiod_display()
		FCM_foulperiod_display();


	}

	//score_data
	//Output: dat -> C3
	trisc = trisc & 0xF7;
	if ((FCV_DAT))
		portc = (portc & 0xF7) | 0x08;
	else
		portc = portc & 0xF7;

	//time_data
	//Output: dat -> C2
	trisc = trisc & 0xFB;
	if ((FCV_DAT))
		portc = (portc & 0xFB) | 0x04;
	else
		portc = portc & 0xFB;

	mainendloop: goto mainendloop;
}

void MX_INTERRUPT_MACRO(void)
{
}



