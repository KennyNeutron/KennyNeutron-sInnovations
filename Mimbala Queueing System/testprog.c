//************************************************************************************
//**  
//**  File name:     C:\Users\Acer-PC\Desktop\mimbala cueing\testprog.c
//**  Title:         
//**  Description:   
//**  
//**  Generated by:  Flowcode v5.2.0.0
//**  Date:          Monday, January 21, 2019 14:48:00
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
#define MX_USES_SINT16 1
#define MX_USES_CHAR 0
#define MX_USES_FLOAT 0
#define MX_USES_SINT32 0
#define MX_USES_BOOL 1
#define MX_USES_UINT16 1
#define MX_USES_UINT32 0
//Defines for microcontroller
#define P16F883
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
#pragma DATA 0x2007, 0x20d2
#endif
#ifdef HI_TECH_C
__CONFIG(0x20d2);
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
void FCM_databank();
void FCM_display();
void FCM_display_win1();
void FCM_display_win2();
void FCM_display_win3();
void FCM_recieve();
void FCM_reset();


//Variable declarations
#define FCV_FALSE (0)
#define FCV_TRUE (1)
MX_UINT8 FCV_RECIEVE;
MX_SINT16 FCV_QUE1 = (0);
MX_UINT8 FCV_WINDOW;
MX_SINT16 FCV_QUE2 = (0);
MX_BOOL FCV_DAT;
MX_SINT16 FCV_QUE3 = (0);
MX_UINT8 FCV_BITS;
MX_UINT8 FCV_WIN;
MX_UINT8 FCV_TENS;
MX_UINT8 FCV_DIGIT;
MX_UINT8 FCV_HUNDREDS;
MX_UINT8 FCV_ONES;
MX_UINT16 FCV_IHAP = (0x0);

MX_UINT8 FCLV_LOOP1;
MX_UINT8 FCLV_LOOP2;
MX_UINT8 FCLV_LOOP3;
MX_UINT8 FCLV_LOOP4;
MX_UINT8 FCLV_LOOP5;
MX_UINT8 FCLV_LOOP6;
MX_UINT8 FCLV_LOOP7;
MX_UINT8 FCLV_LOOP8;



//PWM(0): //Defines:

/**** Macro Substitutions ****
a = Unique Reference
b = PWM Channel - 0=SW / 1-8=HW
c = PWM Alt Pin FCD_PWM0_Enable - 0=Standard / 1=Alt
d = PWM Period
e = PWM Prescaler 1
******************************/

//Period and Prescaler Defines
#ifndef MX_PWM_PERIOD
  #define MX_PWM_PERIOD				80
#else
  #if (MX_PWM_PERIOD != 80)
    #error "PWM period value must be the same in all PWM modules"
  #endif
#endif

#ifndef MX_PWM_PRESCALE1
  #define MX_PWM_PRESCALE1			16
#else
  #if (MX_PWM_PRESCALE1 != 16)
    #error "PWM prescale value must be the same in all PWM modules"
  #endif
#endif

//Definitions for PWM slot allocation
#ifndef	MX_PWM_REF1
			#define MX_PWM_REF1
			#define PWM_4_MX_PWM_UREF			1
			#define MX_PWM_CHANNEL_1		1
			#define MX_PWM_HWALT_1			0
#else
 #ifndef	MX_PWM_REF2
			#define MX_PWM_REF2
			#define PWM_4_MX_PWM_UREF			2
			#define MX_PWM_CHANNEL_2		1
			#define MX_PWM_HWALT_2			0
 #else
  #ifndef	MX_PWM_REF3
			#define MX_PWM_REF3
			#define PWM_4_MX_PWM_UREF			3
			#define MX_PWM_CHANNEL_3		1
			#define MX_PWM_HWALT_3			0
  #else
   #ifndef	MX_PWM_REF4
			#define MX_PWM_REF4
			#define PWM_4_MX_PWM_UREF			4
			#define MX_PWM_CHANNEL_4		1
			#define MX_PWM_HWALT_4			0
   #else
    #ifndef	MX_PWM_REF5
			#define MX_PWM_REF5
			#define PWM_4_MX_PWM_UREF			5
			#define MX_PWM_CHANNEL_5		1
			#define MX_PWM_HWALT_5			0
    #else
     #ifndef	MX_PWM_REF6
			#define MX_PWM_REF6
			#define PWM_4_MX_PWM_UREF			6
			#define MX_PWM_CHANNEL_6		1
			#define MX_PWM_HWALT_6			0
     #else
      #ifndef	MX_PWM_REF7
			#define MX_PWM_REF7
			#define PWM_4_MX_PWM_UREF			7
			#define MX_PWM_CHANNEL_7		1
			#define MX_PWM_HWALT_7			0
      #else
       #ifndef	MX_PWM_REF8
			#define MX_PWM_REF8
			#define PWM_4_MX_PWM_UREF			8
			#define MX_PWM_CHANNEL_8		1
			#define MX_PWM_HWALT_8			0
       #else
        #ifndef	MX_PWM_REF9
			#define MX_PWM_REF9
			#define PWM_4_MX_PWM_UREF			9
			#define MX_PWM_CHANNEL_9		1
			#define MX_PWM_HWALT_9			0
        #else
         #ifndef	MX_PWM_REF10
			#define MX_PWM_REF10
			#define PWM_4_MX_PWM_UREF			10
			#define MX_PWM_CHANNEL_10		1
			#define MX_PWM_HWALT_10			0
         #endif
        #endif
       #endif
      #endif
     #endif
    #endif
   #endif
  #endif
 #endif
#endif

#define PWM_4_PWM_Enable_Channel		CAL_APPEND(FC_CAL_PWM_Enable_Channel_, PWM_4_MX_PWM_UREF)
#define PWM_4_PWM_Disable_Channel		CAL_APPEND(FC_CAL_PWM_Disable_Channel_, PWM_4_MX_PWM_UREF)
#define PWM_4_PWM_Set_Duty_8Bit		CAL_APPEND(FC_CAL_PWM_Set_Duty_8Bit_, PWM_4_MX_PWM_UREF)
#define PWM_4_PWM_Change_Period		CAL_APPEND(FC_CAL_PWM_Change_Period_, PWM_4_MX_PWM_UREF)
#define PWM_4_PWM_Set_Duty_10Bit		CAL_APPEND(FC_CAL_PWM_Set_Duty_10Bit_, PWM_4_MX_PWM_UREF)

extern void PWM_4_PWM_Enable_Channel ();
extern void PWM_4_PWM_Disable_Channel ();
extern void PWM_4_PWM_Set_Duty_8Bit (MX_UINT8 duty);
extern void PWM_4_PWM_Change_Period (MX_UINT8 period, MX_UINT16 prescaler);
extern void PWM_4_PWM_Set_Duty_10Bit (MX_UINT16 duty);




//PWM(0): //Macro function declarations

void FCD_PWM0_Enable();
void FCD_PWM0_Disable();
void FCD_PWM0_SetDutyCycle(MX_UINT8 nDuty);
void FCD_PWM0_ChangePeriod(MX_UINT8 nPeriodVal, MX_UINT8 nPrescalerVal);
void FCD_PWM0_SetDutyCycle10bit(MX_SINT16 nDuty);


//RS232(0): //Defines:

/**** Macro Substitutions ****
a = Unique Reference
b = Uart Channel		(0-software / 1-4 hardware)
c = tx pin
d = tx port
e = rx pin
f = rx port
g = flow control		(0-Off / 1-On)
h = cts pin
i = cts port
j = rts pin
k = rts port
l = baud rate
m = data bits			(7/8/9) (7 only supported in software modes)
n = return type		(0-byte / 1-MX_UINT16)
o = echo enable		(0-Off / 1-On)
******************************/

//Definitions for RS232 UART slot allocation
#ifndef	MX_UART_REF1
	#define MX_UART_REF1
	#define RS232_5_MX_UART_UREF			1
	#define MX_UART_CHANNEL_1		1
	#define MX_UART_TX_PIN_1		0
	#define MX_UART_TX_PORT_1		porta
	#define MX_UART_TX_TRIS_1		trisa
	#define MX_UART_RX_PIN_1		0
	#define MX_UART_RX_PORT_1		porta
	#define MX_UART_RX_TRIS_1		trisa
	#define MX_UART_FLOWEN_1		0
	#define MX_UART_CTS_PIN_1		4
	#define MX_UART_CTS_PORT_1		portc
	#define MX_UART_CTS_TRIS_1		trisc
	#define MX_UART_RTS_PIN_1		0
	#define MX_UART_RTS_PORT_1		portc
	#define MX_UART_RTS_TRIS_1		trisc
	#define MX_UART_BAUD_1			9600
	#define MX_UART_DBITS_1			8
	#define MX_UART_RETURN_1		0
	#define MX_UART_ECHO_1			0
	#define MX_UART_INT_1			0
#else
 #ifndef	MX_UART_REF2
	#define MX_UART_REF2
	#define RS232_5_MX_UART_UREF			2
	#define MX_UART_CHANNEL_2		1
	#define MX_UART_TX_PIN_2		0
	#define MX_UART_TX_PORT_2		porta
	#define MX_UART_TX_TRIS_2		trisa
	#define MX_UART_RX_PIN_2		0
	#define MX_UART_RX_PORT_2		porta
	#define MX_UART_RX_TRIS_2		trisa
	#define MX_UART_FLOWEN_2		0
	#define MX_UART_CTS_PIN_2		4
	#define MX_UART_CTS_PORT_2		portc
	#define MX_UART_CTS_TRIS_2		trisc
	#define MX_UART_RTS_PIN_2		0
	#define MX_UART_RTS_PORT_2		portc
	#define MX_UART_RTS_TRIS_2		trisc
	#define MX_UART_BAUD_2			9600
	#define MX_UART_DBITS_2			8
	#define MX_UART_RETURN_2		0
	#define MX_UART_ECHO_2			0
	#define MX_UART_INT_2			0
 #else
  #ifndef	MX_UART_REF3
	#define MX_UART_REF3
	#define RS232_5_MX_UART_UREF			3
	#define MX_UART_CHANNEL_3		1
	#define MX_UART_TX_PIN_3		0
	#define MX_UART_TX_PORT_3		porta
	#define MX_UART_TX_TRIS_3		trisa
	#define MX_UART_RX_PIN_3		0
	#define MX_UART_RX_PORT_3		porta
	#define MX_UART_RX_TRIS_3		trisa
	#define MX_UART_FLOWEN_3		0
	#define MX_UART_CTS_PIN_3		4
	#define MX_UART_CTS_PORT_3		portc
	#define MX_UART_CTS_TRIS_3		trisc
	#define MX_UART_RTS_PIN_3		0
	#define MX_UART_RTS_PORT_3		portc
	#define MX_UART_RTS_TRIS_3		trisc
	#define MX_UART_BAUD_3			9600
	#define MX_UART_DBITS_3			8
	#define MX_UART_RETURN_3		0
	#define MX_UART_ECHO_3			0
	#define MX_UART_INT_3			0
  #else
   #ifndef	MX_UART_REF4
	#define MX_UART_REF4
	#define RS232_5_MX_UART_UREF			4
	#define MX_UART_CHANNEL_4		1
	#define MX_UART_TX_PIN_4		0
	#define MX_UART_TX_PORT_4		porta
	#define MX_UART_TX_TRIS_4		trisa
	#define MX_UART_RX_PIN_4		0
	#define MX_UART_RX_PORT_4		porta
	#define MX_UART_RX_TRIS_4		trisa
	#define MX_UART_FLOWEN_4		0
	#define MX_UART_CTS_PIN_4		4
	#define MX_UART_CTS_PORT_4		portc
	#define MX_UART_CTS_TRIS_4		trisc
	#define MX_UART_RTS_PIN_4		0
	#define MX_UART_RTS_PORT_4		portc
	#define MX_UART_RTS_TRIS_4		trisc
	#define MX_UART_BAUD_4			9600
	#define MX_UART_DBITS_4			8
	#define MX_UART_RETURN_4		0
	#define MX_UART_ECHO_4			0
	#define MX_UART_INT_4			0
   #endif
  #endif
 #endif
#endif

#define RS232_5_UART_Init		CAL_APPEND(FC_CAL_UART_Init_, RS232_5_MX_UART_UREF)
#define RS232_5_UART_Send		CAL_APPEND(FC_CAL_UART_Send_, RS232_5_MX_UART_UREF)
#define RS232_5_UART_Receive		CAL_APPEND(FC_CAL_UART_Receive_, RS232_5_MX_UART_UREF)
#define RS232_5_UART_Update_Baud CAL_APPEND(FC_CAL_UART_Update_Baud_, RS232_5_MX_UART_UREF)

extern void RS232_5_UART_Init();
extern void RS232_5_UART_Send(MX_UINT16 nChar);
extern MX_SINT16 RS232_5_UART_Receive(MX_UINT8 nTimeout);
extern void RS232_5_UART_Update_Baud(MX_UINT8 newbaud);




//RS232(0): //Macro function declarations

void FCD_RS2320_SendRS232Char(MX_SINT16 nChar);
void FCD_RS2320_SendRS232String(MX_STRING String, MX_UINT8 MSZ_String);
MX_SINT16 FCD_RS2320_ReceiveRS232Char(MX_UINT8 nTimeout);
void FCD_RS2320_ReceiveRS232String(MX_CHAR* FCR_RETVAL, MX_UINT8 FCR_RETVAL_SIZE, MX_UINT8 nTimeout, MX_UINT8 NumBytes);
void FCD_RS2320_ChangeHWBaud(MX_UINT8 newbaud);



//PWM(0): //Macro implementations


void FCD_PWM0_Enable()
{
	
		PWM_4_PWM_Change_Period (MX_PWM_PERIOD, MX_PWM_PRESCALE1);
		PWM_4_PWM_Enable_Channel ();

}

void FCD_PWM0_Disable()
{
	
		PWM_4_PWM_Disable_Channel();

}

void FCD_PWM0_SetDutyCycle(MX_UINT8 nDuty)
{
	
		PWM_4_PWM_Set_Duty_8Bit(nDuty);

}

void FCD_PWM0_ChangePeriod(MX_UINT8 nPeriodVal, MX_UINT8 nPrescalerVal)
{
	
		PWM_4_PWM_Change_Period (nPeriodVal, nPrescalerVal);

}

void FCD_PWM0_SetDutyCycle10bit(MX_SINT16 nDuty)
{
	
		PWM_4_PWM_Set_Duty_10Bit(nDuty);

}



//RS232(0): //Macro implementations


void FCD_RS2320_SendRS232Char(MX_SINT16 nChar)
{
	
		RS232_5_UART_Send ( nChar);

}

void FCD_RS2320_SendRS232String(MX_STRING String, MX_UINT8 MSZ_String)
{
	
		MX_UINT8 idx;
		for(idx = 0; idx < MSZ_String; idx++)
		{
			if (String[idx] == 0)
				break;
			else RS232_5_UART_Send ( String[idx] );
		}

}

MX_SINT16 FCD_RS2320_ReceiveRS232Char(MX_UINT8 nTimeout)
{
	
		return ( RS232_5_UART_Receive ( nTimeout) );

}

void FCD_RS2320_ReceiveRS232String(MX_CHAR* FCR_RETVAL, MX_UINT8 FCR_RETVAL_SIZE, MX_UINT8 nTimeout, MX_UINT8 NumBytes)
{
	
		MX_UINT8 idx;
		MX_SINT16 RS232_TO = 255;
		MX_SINT16 in;

		if ( 0 != 0 )
			RS232_TO = 256;

		if (NumBytes > FCR_RETVAL_SIZE)
			NumBytes = FCR_RETVAL_SIZE;

		for (idx = 0; idx < NumBytes; idx++)
		{
			in = RS232_5_UART_Receive ( nTimeout);
			if(in < RS232_TO)
				FCR_RETVAL[idx] = in & 0xFF;
			else
				break;
		}

		if (idx < FCR_RETVAL_SIZE)
			FCR_RETVAL[idx] = 0;

}

void FCD_RS2320_ChangeHWBaud(MX_UINT8 newbaud)
{
	
		RS232_5_UART_Update_Baud (newbaud);

}

#include "C:\Program Files (x86)\Flowcode\v5\CAL\includes.c"

//Macro implementations


void FCM_databank()
{

	//Switch
	//Switch: digit?
	switch (FCV_DIGIT)
	{
		case 1:
		{
			//Calculation
			//Calculation:
			//  bits = 0b10011111
			FCV_BITS = 159;

			break;
		}
		case 2:
		{
			//Calculation
			//Calculation:
			//  bits = 0b00100100
			FCV_BITS = 36;

			break;
		}
		case 3:
		{
			//Calculation
			//Calculation:
			//  bits = 0b00001101
			FCV_BITS = 13;

			break;
		}
		case 4:
		{
			//Calculation
			//Calculation:
			//  bits = 0b10011001
			FCV_BITS = 153;

			break;
		}
		case 5:
		{
			//Calculation
			//Calculation:
			//  bits = 0b01001001
			FCV_BITS = 73;

			break;
		}
		case 6:
		{
			//Calculation
			//Calculation:
			//  bits = 0b01000001
			FCV_BITS = 65;

			break;
		}
		case 7:
		{
			//Calculation
			//Calculation:
			//  bits = 0b00011111
			FCV_BITS = 31;

			break;
		}
		case 8:
		{
			//Calculation
			//Calculation:
			//  bits = 0b00000001
			FCV_BITS = 1;

			break;
		}
		case 9:
		{
			//Calculation
			//Calculation:
			//  bits = 0b00001001
			FCV_BITS = 9;

			break;
		}
		case 0:
		{
			//Calculation
			//Calculation:
			//  bits = 0b00000011
			FCV_BITS = 3;

			break;
		}
		// default:

	}

}


void FCM_display()
{

	//Loop
	//Loop: Loop 8 times
	for (FCLV_LOOP2=0; FCLV_LOOP2<8; FCLV_LOOP2++)
	{

		//Calculation
		//Calculation:
		//  dat = bits AND 1
		FCV_DAT = FCV_BITS & 1;

		//data
		//Output: dat -> A0
		trisa = trisa & 0xFE;
		if ((FCV_DAT))
			porta = (porta & 0xFE) | 0x01;
		else
			porta = porta & 0xFE;

		//clk
		//Output: 1 -> B5
		trisb = trisb & 0xDF;
		if ((1))
			portb = (portb & 0xDF) | 0x20;
		else
			portb = portb & 0xDF;

		//Delay
		//Delay: 10 us
		delay_us(10);

		//clk
		//Output: 0 -> B5
		trisb = trisb & 0xDF;
		if ((0))
			portb = (portb & 0xDF) | 0x20;
		else
			portb = portb & 0xDF;

		//Delay
		//Delay: 10 us
		delay_us(10);

		//Calculation
		//Calculation:
		//  bits = bits >> 1
		FCV_BITS = FCV_BITS >> 1;


	}

	//reg
	//Output: 1 -> B4
	trisb = trisb & 0xEF;
	if ((1))
		portb = (portb & 0xEF) | 0x10;
	else
		portb = portb & 0xEF;

	//Delay
	//Delay: 10 us
	delay_us(10);

	//reg
	//Output: 0 -> B4
	trisb = trisb & 0xEF;
	if ((0))
		portb = (portb & 0xEF) | 0x10;
	else
		portb = portb & 0xEF;

	//Delay
	//Delay: 10 us
	delay_us(10);

}


void FCM_display_win1()
{

	//Calculation
	//Calculation:
	//  hundreds = que1 / 100
	//  tens = (que1 % 100) / 10
	//  ones = que1 % 10
	//  window = 1
	FCV_HUNDREDS = FCV_QUE1 / 100;
	FCV_TENS = (FCV_QUE1 % 100) / 10;
	FCV_ONES = FCV_QUE1 % 10;
	FCV_WINDOW = 1;

	//Calculation
	//Calculation:
	//  digit = window
	FCV_DIGIT = FCV_WINDOW;

	//Call Macro
	//Call Macro: databank()
	FCM_databank();

	//Call Macro
	//Call Macro: display()
	FCM_display();

	//Calculation
	//Calculation:
	//  digit = ones
	FCV_DIGIT = FCV_ONES;

	//Call Macro
	//Call Macro: databank()
	FCM_databank();

	//Call Macro
	//Call Macro: display()
	FCM_display();

	//Calculation
	//Calculation:
	//  digit = tens
	FCV_DIGIT = FCV_TENS;

	//Call Macro
	//Call Macro: databank()
	FCM_databank();

	//Call Macro
	//Call Macro: display()
	FCM_display();

	//Calculation
	//Calculation:
	//  digit = hundreds
	FCV_DIGIT = FCV_HUNDREDS;

	//Call Macro
	//Call Macro: databank()
	FCM_databank();

	//Call Macro
	//Call Macro: display()
	FCM_display();

}


void FCM_display_win2()
{

	//Calculation
	//Calculation:
	//  hundreds = que2 / 100
	//  tens = (que2 % 100) / 10
	//  ones = que2 % 10
	//  window = 2
	FCV_HUNDREDS = FCV_QUE2 / 100;
	FCV_TENS = (FCV_QUE2 % 100) / 10;
	FCV_ONES = FCV_QUE2 % 10;
	FCV_WINDOW = 2;

	//Calculation
	//Calculation:
	//  digit = window
	FCV_DIGIT = FCV_WINDOW;

	//Call Macro
	//Call Macro: databank()
	FCM_databank();

	//Call Macro
	//Call Macro: display()
	FCM_display();

	//Calculation
	//Calculation:
	//  digit = ones
	FCV_DIGIT = FCV_ONES;

	//Call Macro
	//Call Macro: databank()
	FCM_databank();

	//Call Macro
	//Call Macro: display()
	FCM_display();

	//Calculation
	//Calculation:
	//  digit = tens
	FCV_DIGIT = FCV_TENS;

	//Call Macro
	//Call Macro: databank()
	FCM_databank();

	//Call Macro
	//Call Macro: display()
	FCM_display();

	//Calculation
	//Calculation:
	//  digit = hundreds
	FCV_DIGIT = FCV_HUNDREDS;

	//Call Macro
	//Call Macro: databank()
	FCM_databank();

	//Call Macro
	//Call Macro: display()
	FCM_display();

}


void FCM_display_win3()
{

	//Calculation
	//Calculation:
	//  hundreds = que3 / 100
	//  tens = (que3 % 100) / 10
	//  ones = que3 % 10
	//  window = 3
	FCV_HUNDREDS = FCV_QUE3 / 100;
	FCV_TENS = (FCV_QUE3 % 100) / 10;
	FCV_ONES = FCV_QUE3 % 10;
	FCV_WINDOW = 3;

	//Calculation
	//Calculation:
	//  digit = window
	FCV_DIGIT = FCV_WINDOW;

	//Call Macro
	//Call Macro: databank()
	FCM_databank();

	//Call Macro
	//Call Macro: display()
	FCM_display();

	//Calculation
	//Calculation:
	//  digit = ones
	FCV_DIGIT = FCV_ONES;

	//Call Macro
	//Call Macro: databank()
	FCM_databank();

	//Call Macro
	//Call Macro: display()
	FCM_display();

	//Calculation
	//Calculation:
	//  digit = tens
	FCV_DIGIT = FCV_TENS;

	//Call Macro
	//Call Macro: databank()
	FCM_databank();

	//Call Macro
	//Call Macro: display()
	FCM_display();

	//Calculation
	//Calculation:
	//  digit = hundreds
	FCV_DIGIT = FCV_HUNDREDS;

	//Call Macro
	//Call Macro: databank()
	FCM_databank();

	//Call Macro
	//Call Macro: display()
	FCM_display();

}


void FCM_recieve()
{

	//Switch
	//Switch: recieve?
	switch (FCV_RECIEVE)
	{
		case 'A':
		{
			//Call Component Macro
			//Call Component Macro: recieve=ReceiveRS232Char(100)
			FCV_RECIEVE = FCD_RS2320_ReceiveRS232Char(100);

			//Switch
			//Switch: recieve?
			switch (FCV_RECIEVE)
			{
				case '1':
				{
					//Calculation
					//Calculation:
					//  que1 = que1 + 1
					FCV_QUE1 = FCV_QUE1 + 1;

					break;
				}
				case '2':
				{
					//Calculation
					//Calculation:
					//  que1 = que1 - 1
					FCV_QUE1 = FCV_QUE1 - 1;

					break;
				}
				// default:

			}

			//Call Macro
			//Call Macro: reset()
			FCM_reset();

			//Call Macro
			//Call Macro: display_win1()
			FCM_display_win1();

			//Loop
			//Loop: Loop 3 times
			for (FCLV_LOOP3=0; FCLV_LOOP3<3; FCLV_LOOP3++)
			{

				//Call Component Macro
				//Call Component Macro: Enable()
				FCD_PWM0_Enable();

				//Call Component Macro
				//Call Component Macro: SetDutyCycle(75)
				FCD_PWM0_SetDutyCycle(75);

				//Delay
				//Delay: 500 ms
				delay_ms(255);
				delay_ms(245);

				//Call Component Macro
				//Call Component Macro: Disable()
				FCD_PWM0_Disable();

				//Delay
				//Delay: 500 ms
				delay_ms(255);
				delay_ms(245);


			}

			break;
		}
		case 'B':
		{
			//Call Component Macro
			//Call Component Macro: recieve=ReceiveRS232Char(100)
			FCV_RECIEVE = FCD_RS2320_ReceiveRS232Char(100);

			//Switch
			//Switch: recieve?
			switch (FCV_RECIEVE)
			{
				case '1':
				{
					//Calculation
					//Calculation:
					//  que2 = que2 + 1
					FCV_QUE2 = FCV_QUE2 + 1;

					break;
				}
				case '2':
				{
					//Calculation
					//Calculation:
					//  que2 = que2 - 1
					FCV_QUE2 = FCV_QUE2 - 1;

					break;
				}
				// default:

			}

			//Call Macro
			//Call Macro: reset()
			FCM_reset();

			//Call Macro
			//Call Macro: display_win2()
			FCM_display_win2();

			//Loop
			//Loop: Loop 3 times
			for (FCLV_LOOP4=0; FCLV_LOOP4<3; FCLV_LOOP4++)
			{

				//Call Component Macro
				//Call Component Macro: Enable()
				FCD_PWM0_Enable();

				//Call Component Macro
				//Call Component Macro: SetDutyCycle(75)
				FCD_PWM0_SetDutyCycle(75);

				//Delay
				//Delay: 500 ms
				delay_ms(255);
				delay_ms(245);

				//Call Component Macro
				//Call Component Macro: Disable()
				FCD_PWM0_Disable();

				//Delay
				//Delay: 500 ms
				delay_ms(255);
				delay_ms(245);


			}

			break;
		}
		case 'C':
		{
			//Call Component Macro
			//Call Component Macro: recieve=ReceiveRS232Char(100)
			FCV_RECIEVE = FCD_RS2320_ReceiveRS232Char(100);

			//Switch
			//Switch: recieve?
			switch (FCV_RECIEVE)
			{
				case '1':
				{
					//Calculation
					//Calculation:
					//  que3 = que3 + 1
					FCV_QUE3 = FCV_QUE3 + 1;

					break;
				}
				case '2':
				{
					//Calculation
					//Calculation:
					//  que3 = que3 - 1
					FCV_QUE3 = FCV_QUE3 - 1;

					break;
				}
				// default:

			}

			//Call Macro
			//Call Macro: reset()
			FCM_reset();

			//Call Macro
			//Call Macro: display_win3()
			FCM_display_win3();

			//Loop
			//Loop: Loop 3 times
			for (FCLV_LOOP5=0; FCLV_LOOP5<3; FCLV_LOOP5++)
			{

				//Call Component Macro
				//Call Component Macro: Enable()
				FCD_PWM0_Enable();

				//Call Component Macro
				//Call Component Macro: SetDutyCycle(75)
				FCD_PWM0_SetDutyCycle(75);

				//Delay
				//Delay: 500 ms
				delay_ms(255);
				delay_ms(245);

				//Call Component Macro
				//Call Component Macro: Disable()
				FCD_PWM0_Disable();

				//Delay
				//Delay: 500 ms
				delay_ms(255);
				delay_ms(245);


			}

			break;
		}
		// default:

	}

}


void FCM_reset()
{

	//Switch
	//Switch: que1?
	switch (FCV_QUE1)
	{
		case -1:
		{
			//Calculation
			//Calculation:
			//  que1 = 999
			FCV_QUE1 = 999;

			break;
		}
		case 1000:
		{
			//Calculation
			//Calculation:
			//  que1 = 0
			FCV_QUE1 = 0;

			//Loop
			//Loop: Loop 10 times
			for (FCLV_LOOP6=0; FCLV_LOOP6<10; FCLV_LOOP6++)
			{

				//Call Component Macro
				//Call Component Macro: Enable()
				FCD_PWM0_Enable();

				//Call Component Macro
				//Call Component Macro: SetDutyCycle(75)
				FCD_PWM0_SetDutyCycle(75);

				//Delay
				//Delay: 150 ms
				delay_ms(150);

				//Call Component Macro
				//Call Component Macro: Disable()
				FCD_PWM0_Disable();

				//Delay
				//Delay: 150 ms
				delay_ms(150);


			}

			break;
		}
		// default:

	}

	//Switch
	//Switch: que2?
	switch (FCV_QUE2)
	{
		case -1:
		{
			//Calculation
			//Calculation:
			//  que2 = 999
			FCV_QUE2 = 999;

			break;
		}
		case 1000:
		{
			//Calculation
			//Calculation:
			//  que2 = 0
			FCV_QUE2 = 0;

			//Loop
			//Loop: Loop 10 times
			for (FCLV_LOOP7=0; FCLV_LOOP7<10; FCLV_LOOP7++)
			{

				//Call Component Macro
				//Call Component Macro: Enable()
				FCD_PWM0_Enable();

				//Call Component Macro
				//Call Component Macro: SetDutyCycle(75)
				FCD_PWM0_SetDutyCycle(75);

				//Delay
				//Delay: 150 ms
				delay_ms(150);

				//Call Component Macro
				//Call Component Macro: Disable()
				FCD_PWM0_Disable();

				//Delay
				//Delay: 150 ms
				delay_ms(150);


			}

			break;
		}
		// default:

	}

	//Switch
	//Switch: que3?
	switch (FCV_QUE3)
	{
		case -1:
		{
			//Calculation
			//Calculation:
			//  que3 = 999
			FCV_QUE3 = 999;

			break;
		}
		case 1000:
		{
			//Calculation
			//Calculation:
			//  que3 = 0
			FCV_QUE3 = 0;

			//Loop
			//Loop: Loop 10 times
			for (FCLV_LOOP8=0; FCLV_LOOP8<10; FCLV_LOOP8++)
			{

				//Call Component Macro
				//Call Component Macro: Enable()
				FCD_PWM0_Enable();

				//Call Component Macro
				//Call Component Macro: SetDutyCycle(75)
				FCD_PWM0_SetDutyCycle(75);

				//Delay
				//Delay: 150 ms
				delay_ms(150);

				//Call Component Macro
				//Call Component Macro: Disable()
				FCD_PWM0_Disable();

				//Delay
				//Delay: 150 ms
				delay_ms(150);


			}

			break;
		}
		// default:

	}

}



void main()
{
	//Initialization
	ansel = 0;
anselh = 0;

	
		RS232_5_UART_Init( );		//Call initialise function


	//Interrupt initialization code
	option_reg = 0xC0;


	//Calculation
	//Calculation:
	//  digit = 1
	FCV_DIGIT = 1;

	//data
	//Output: 0 -> A0
	trisa = trisa & 0xFE;
	if ((0))
		porta = (porta & 0xFE) | 0x01;
	else
		porta = porta & 0xFE;

	//clk
	//Output: 0 -> B5
	trisb = trisb & 0xDF;
	if ((0))
		portb = (portb & 0xDF) | 0x20;
	else
		portb = portb & 0xDF;

	//reg
	//Output: 0 -> B4
	trisb = trisb & 0xEF;
	if ((0))
		portb = (portb & 0xEF) | 0x10;
	else
		portb = portb & 0xEF;

	//Calculation
	//Calculation:
	//  que1 = 123
	//  que2 = 456
	//  que3 = 789
	//  win = 1
	FCV_QUE1 = 123;
	FCV_QUE2 = 456;
	FCV_QUE3 = 789;
	FCV_WIN = 1;

	//Loop
	//Loop: While 1
	while (1)
	{

		//Call Component Macro
		//Call Component Macro: SendRS232Char("a")
		FCD_RS2320_SendRS232Char('a');


	}

	//Loop
	//Loop: While 1
	while (1)
	{

		//Loop
		//Loop: While ihap = 30
		while (1)
		{

			//Call Component Macro
			//Call Component Macro: recieve=ReceiveRS232Char(100)
			FCV_RECIEVE = FCD_RS2320_ReceiveRS232Char(100);

			//Decision
			//Decision: recieve = 'D'?
			if (FCV_RECIEVE == 'D')
			{

				//Calculation
				//Calculation:
				//  que1 = 0
				//  que2 = 0
				//  que3 = 0
				FCV_QUE1 = 0;
				FCV_QUE2 = 0;
				FCV_QUE3 = 0;

				//Call Macro
				//Call Macro: display_win1()
				FCM_display_win1();

				//Call Macro
				//Call Macro: display_win2()
				FCM_display_win2();

				//Call Macro
				//Call Macro: display_win3()
				FCM_display_win3();

				//Loop
				//Loop: Loop 10 times
				for (FCLV_LOOP1=0; FCLV_LOOP1<10; FCLV_LOOP1++)
				{

					//Call Component Macro
					//Call Component Macro: Enable()
					FCD_PWM0_Enable();

					//Call Component Macro
					//Call Component Macro: SetDutyCycle(75)
					FCD_PWM0_SetDutyCycle(75);

					//Delay
					//Delay: 150 ms
					delay_ms(150);

					//Call Component Macro
					//Call Component Macro: Disable()
					FCD_PWM0_Disable();

					//Delay
					//Delay: 150 ms
					delay_ms(150);


				}

			} else {

				//Call Macro
				//Call Macro: recieve()
				FCM_recieve();

			}

			//Delay
			//Delay: 1 ms
			delay_ms(1);

			//Calculation
			//Calculation:
			//  ihap = ihap + 1
			FCV_IHAP = FCV_IHAP + 1;


			if ((FCV_IHAP == 30) != 0) break;
		}

		//Connection Point
		//Connection Point: [A]: A
FCC_Main_A:
;

		//Switch
		//Switch: win?
		switch (FCV_WIN)
		{
			case 1:
			{
				//Call Macro
				//Call Macro: display_win1()
				FCM_display_win1();

				break;
			}
			case 2:
			{
				//Call Macro
				//Call Macro: display_win2()
				FCM_display_win2();

				break;
			}
			case 3:
			{
				//Call Macro
				//Call Macro: display_win3()
				FCM_display_win3();

				break;
			}
			case 4:
			{
				//Calculation
				//Calculation:
				//  win = 1
				FCV_WIN = 1;

				//Goto Connection Point
				//Goto Connection Point: [A]: A
				goto FCC_Main_A;

				break;
			}
			// default:

		}

		//Calculation
		//Calculation:
		//  win = win + 1
		FCV_WIN = FCV_WIN + 1;

		//Calculation
		//Calculation:
		//  ihap = 0
		FCV_IHAP = 0;


	}

	mainendloop: goto mainendloop;
}

void MX_INTERRUPT_MACRO(void)
{
}



