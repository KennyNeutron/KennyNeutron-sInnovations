//************************************************************************************
//**  
//**  File name:     D:\KennyNeutronsInnovations\AC\FlowCode\LCDtest.c
//**  Title:         
//**  Description:   
//**  
//**  Generated by:  Flowcode v5.2.0.0
//**  Date:          Tuesday, March 05, 2019 14:08:32
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
void FCM_Equipment1();
void FCM_Equipment2();
void FCM_Equipment3();
void FCM_init();
void FCM_check();
void FCM_Equipment4();


//Variable declarations
#define FCV_FALSE (0)
#define FCV_TRUE (1)
MX_BOOL FCV_EQ1_SE1 = (0);
MX_BOOL FCV_EQ2_SE1 = (0);
MX_BOOL FCV_EQ1_SE2 = (0);
MX_BOOL FCV_EQ6_FLAG = (0);
MX_BOOL FCV_EQ2_ERRORFLAG = (0);
MX_BOOL FCV_EQ3_SE1 = (0);
MX_BOOL FCV_EQ2_SE2 = (0);
MX_BOOL FCV_EQ5_ERRORFLAG = (0);
MX_BOOL FCV_EQ5_FLAG = (0);
MX_BOOL FCV_EQ3_SE2 = (0);
MX_BOOL FCV_EQ4_FLAG = (0);
MX_BOOL FCV_EQ4_SE1 = (0);
MX_BOOL FCV_EQ3_FLAG = (0);
MX_BOOL FCV_EQ4_SE2 = (0);
MX_BOOL FCV_EQ5_SE1 = (0);
MX_BOOL FCV_EQ2_FLAG = (0);
MX_UINT8 FCV_RX = (0x0);
MX_BOOL FCV_DOORLOCK = (0);
MX_BOOL FCV_SIREN_FLAG = (0);
MX_BOOL FCV_EQ5_SE2 = (0);
MX_BOOL FCV_EQ6_SE1 = (0);
MX_BOOL FCV_EQ1_FLAG = (0);
MX_BOOL FCV_EQ6_SE2 = (0);
MX_BOOL FCV_EQ1_ERRORFLAG = (0);
MX_BOOL FCV_EQ4_ERRORFLAG = (0);
MX_BOOL FCV_FLAG = (0);
MX_BOOL FCV_EQ3_ERRORFLAG;
MX_BOOL FCV_EQ6_ERRORFLAG = (0);
MX_BOOL FCV_SIREN = (0);




//LCDDisplay(0): //Defines:

/**** Macro Substitutions ****
a = Unique Component Reference Number
b = D1 Port Letter
c = D2 Port Letter
d = D3 Port Letter
e = D4 Port Letter
f = RS Port Letter
g = E Port Letter
h = Data 1_Pin
i = Data 2 Pin
j = Data 3 Pin
k = Data 4 Pin
l = RS Pin
m = Enable Pin
n = Row Count
o = Column Count
******************************/

	//component connections
	#define LCD_1__PORT0    portb
	#define LCD_1__PORT1    portb
	#define LCD_1__PORT2    portb
	#define LCD_1__PORT3    portb
	#define LCD_1__PORT4    portb
	#define LCD_1__PORT5    portb
	#define LCD_1__TRIS0    trisb
	#define LCD_1__TRIS1    trisb
	#define LCD_1__TRIS2    trisb
	#define LCD_1__TRIS3    trisb
	#define LCD_1__TRIS4    trisb
	#define LCD_1__TRIS5    trisb
	#define LCD_1__BIT0    	5
	#define LCD_1__BIT1    	4
	#define LCD_1__BIT2    	3
	#define LCD_1__BIT3    	2
	#define LCD_1__RS      	7
	#define LCD_1__E       	6
	#define LCD_1__ROWCNT	2
	#define LCD_1__COLCNT	16

	#ifdef _BOOSTC
	  #define LCD_1__DELAY   delay_10us(10)
	#endif
	#ifdef _C2C_
	  #define LCD_1__DELAY   delay_us(100)
	#endif
	#ifdef HI_TECH_C
	  #define LCD_1__DELAY   __delay_us(120)
	#endif
	#ifndef LCD_1__DELAY
	  #define LCD_1__DELAY   delay_us(100)
	#endif




//LCDDisplay(0): //Macro function declarations

void FCD_LCDDisplay0_RawSend(MX_UINT8 in, MX_UINT8 mask);
void FCD_LCDDisplay0_Start();
void FCD_LCDDisplay0_Clear();
void FCD_LCDDisplay0_PrintASCII(MX_UINT8 Character);
void FCD_LCDDisplay0_Command(MX_UINT8 in);
void FCD_LCDDisplay0_Cursor(MX_UINT8 x, MX_UINT8 y);
void FCD_LCDDisplay0_PrintNumber(MX_SINT16 Number);
void FCD_LCDDisplay0_PrintString(MX_STRING String, MX_UINT8 MSZ_String);
void FCD_LCDDisplay0_ScrollDisplay(MX_UINT8 Direction, MX_UINT8 Num_Positions);
void FCD_LCDDisplay0_ClearLine(MX_UINT8 Line);
void FCD_LCDDisplay0_RAM_Write(MX_UINT8 nIdx, MX_UINT8 d0, MX_UINT8 d1, MX_UINT8 d2, MX_UINT8 d3, MX_UINT8 d4, MX_UINT8 d5, MX_UINT8 d6, MX_UINT8 d7);


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
	#define RS232_2_MX_UART_UREF			1
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
	#define RS232_2_MX_UART_UREF			2
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
	#define RS232_2_MX_UART_UREF			3
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
	#define RS232_2_MX_UART_UREF			4
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

#define RS232_2_UART_Init		CAL_APPEND(FC_CAL_UART_Init_, RS232_2_MX_UART_UREF)
#define RS232_2_UART_Send		CAL_APPEND(FC_CAL_UART_Send_, RS232_2_MX_UART_UREF)
#define RS232_2_UART_Receive		CAL_APPEND(FC_CAL_UART_Receive_, RS232_2_MX_UART_UREF)
#define RS232_2_UART_Update_Baud CAL_APPEND(FC_CAL_UART_Update_Baud_, RS232_2_MX_UART_UREF)

extern void RS232_2_UART_Init();
extern void RS232_2_UART_Send(MX_UINT16 nChar);
extern MX_SINT16 RS232_2_UART_Receive(MX_UINT8 nTimeout);
extern void RS232_2_UART_Update_Baud(MX_UINT8 newbaud);




//RS232(0): //Macro function declarations

void FCD_RS2320_SendRS232Char(MX_SINT16 nChar);
void FCD_RS2320_SendRS232String(MX_STRING String, MX_UINT8 MSZ_String);
MX_SINT16 FCD_RS2320_ReceiveRS232Char(MX_UINT8 nTimeout);
void FCD_RS2320_ReceiveRS232String(MX_CHAR* FCR_RETVAL, MX_UINT8 FCR_RETVAL_SIZE, MX_UINT8 nTimeout, MX_UINT8 NumBytes);
void FCD_RS2320_ChangeHWBaud(MX_UINT8 newbaud);


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
  #define MX_PWM_PERIOD				155
#else
  #if (MX_PWM_PERIOD != 155)
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
			#define PWM_5_MX_PWM_UREF			1
			#define MX_PWM_CHANNEL_1		1
			#define MX_PWM_HWALT_1			0
#else
 #ifndef	MX_PWM_REF2
			#define MX_PWM_REF2
			#define PWM_5_MX_PWM_UREF			2
			#define MX_PWM_CHANNEL_2		1
			#define MX_PWM_HWALT_2			0
 #else
  #ifndef	MX_PWM_REF3
			#define MX_PWM_REF3
			#define PWM_5_MX_PWM_UREF			3
			#define MX_PWM_CHANNEL_3		1
			#define MX_PWM_HWALT_3			0
  #else
   #ifndef	MX_PWM_REF4
			#define MX_PWM_REF4
			#define PWM_5_MX_PWM_UREF			4
			#define MX_PWM_CHANNEL_4		1
			#define MX_PWM_HWALT_4			0
   #else
    #ifndef	MX_PWM_REF5
			#define MX_PWM_REF5
			#define PWM_5_MX_PWM_UREF			5
			#define MX_PWM_CHANNEL_5		1
			#define MX_PWM_HWALT_5			0
    #else
     #ifndef	MX_PWM_REF6
			#define MX_PWM_REF6
			#define PWM_5_MX_PWM_UREF			6
			#define MX_PWM_CHANNEL_6		1
			#define MX_PWM_HWALT_6			0
     #else
      #ifndef	MX_PWM_REF7
			#define MX_PWM_REF7
			#define PWM_5_MX_PWM_UREF			7
			#define MX_PWM_CHANNEL_7		1
			#define MX_PWM_HWALT_7			0
      #else
       #ifndef	MX_PWM_REF8
			#define MX_PWM_REF8
			#define PWM_5_MX_PWM_UREF			8
			#define MX_PWM_CHANNEL_8		1
			#define MX_PWM_HWALT_8			0
       #else
        #ifndef	MX_PWM_REF9
			#define MX_PWM_REF9
			#define PWM_5_MX_PWM_UREF			9
			#define MX_PWM_CHANNEL_9		1
			#define MX_PWM_HWALT_9			0
        #else
         #ifndef	MX_PWM_REF10
			#define MX_PWM_REF10
			#define PWM_5_MX_PWM_UREF			10
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

#define PWM_5_PWM_Enable_Channel		CAL_APPEND(FC_CAL_PWM_Enable_Channel_, PWM_5_MX_PWM_UREF)
#define PWM_5_PWM_Disable_Channel		CAL_APPEND(FC_CAL_PWM_Disable_Channel_, PWM_5_MX_PWM_UREF)
#define PWM_5_PWM_Set_Duty_8Bit		CAL_APPEND(FC_CAL_PWM_Set_Duty_8Bit_, PWM_5_MX_PWM_UREF)
#define PWM_5_PWM_Change_Period		CAL_APPEND(FC_CAL_PWM_Change_Period_, PWM_5_MX_PWM_UREF)
#define PWM_5_PWM_Set_Duty_10Bit		CAL_APPEND(FC_CAL_PWM_Set_Duty_10Bit_, PWM_5_MX_PWM_UREF)

extern void PWM_5_PWM_Enable_Channel ();
extern void PWM_5_PWM_Disable_Channel ();
extern void PWM_5_PWM_Set_Duty_8Bit (MX_UINT8 duty);
extern void PWM_5_PWM_Change_Period (MX_UINT8 period, MX_UINT16 prescaler);
extern void PWM_5_PWM_Set_Duty_10Bit (MX_UINT16 duty);




//PWM(0): //Macro function declarations

void FCD_PWM0_Enable();
void FCD_PWM0_Disable();
void FCD_PWM0_SetDutyCycle(MX_UINT8 nDuty);
void FCD_PWM0_ChangePeriod(MX_UINT8 nPeriodVal, MX_UINT8 nPrescalerVal);
void FCD_PWM0_SetDutyCycle10bit(MX_SINT16 nDuty);



//LCDDisplay(0): //Macro implementations


void FCD_LCDDisplay0_RawSend(MX_UINT8 in, MX_UINT8 mask)
{
	
		MX_UINT8 pt;

		FC_CAL_Bit_Low(LCD_1__PORT0, LCD_1__BIT0);
		FC_CAL_Bit_Low(LCD_1__PORT1, LCD_1__BIT1);
		FC_CAL_Bit_Low(LCD_1__PORT2, LCD_1__BIT2);
		FC_CAL_Bit_Low(LCD_1__PORT3, LCD_1__BIT3);
		FC_CAL_Bit_Low(LCD_1__PORT4, LCD_1__RS);
		FC_CAL_Bit_Low(LCD_1__PORT5, LCD_1__E);
		pt = ((in >> 4) & 0x0f);
		if (pt & 0x01)
		    FC_CAL_Bit_High(LCD_1__PORT0, LCD_1__BIT0);
		if (pt & 0x02)
		    FC_CAL_Bit_High(LCD_1__PORT1, LCD_1__BIT1);
		if (pt & 0x04)
		    FC_CAL_Bit_High(LCD_1__PORT2, LCD_1__BIT2);
		if (pt & 0x08)
		    FC_CAL_Bit_High(LCD_1__PORT3, LCD_1__BIT3);
		if (mask)
		    FC_CAL_Bit_High(LCD_1__PORT4, LCD_1__RS);
		LCD_1__DELAY;
		FC_CAL_Bit_High (LCD_1__PORT5, LCD_1__E);
		LCD_1__DELAY;
		FC_CAL_Bit_Low (LCD_1__PORT5, LCD_1__E);
		pt = (in & 0x0f);
		LCD_1__DELAY;
		FC_CAL_Bit_Low(LCD_1__PORT0, LCD_1__BIT0);
		FC_CAL_Bit_Low(LCD_1__PORT1, LCD_1__BIT1);
		FC_CAL_Bit_Low(LCD_1__PORT2, LCD_1__BIT2);
		FC_CAL_Bit_Low(LCD_1__PORT3, LCD_1__BIT3);
		FC_CAL_Bit_Low(LCD_1__PORT4, LCD_1__RS);
		FC_CAL_Bit_Low(LCD_1__PORT5, LCD_1__E);
		if (pt & 0x01)
		    FC_CAL_Bit_High(LCD_1__PORT0, LCD_1__BIT0);
		if (pt & 0x02)
		    FC_CAL_Bit_High(LCD_1__PORT1, LCD_1__BIT1);
		if (pt & 0x04)
		    FC_CAL_Bit_High(LCD_1__PORT2, LCD_1__BIT2);
		if (pt & 0x08)
		    FC_CAL_Bit_High(LCD_1__PORT3, LCD_1__BIT3);
		if (mask)
		    FC_CAL_Bit_High(LCD_1__PORT4, LCD_1__RS);
		LCD_1__DELAY;
		FC_CAL_Bit_High (LCD_1__PORT5, LCD_1__E);
		LCD_1__DELAY;
		FC_CAL_Bit_Low (LCD_1__PORT5, LCD_1__E);
		LCD_1__DELAY;

}

void FCD_LCDDisplay0_Start()
{
	
		FC_CAL_Bit_Low_DDR(LCD_1__PORT0, LCD_1__TRIS0, LCD_1__BIT0);
		FC_CAL_Bit_Low_DDR(LCD_1__PORT1, LCD_1__TRIS1, LCD_1__BIT1);
		FC_CAL_Bit_Low_DDR(LCD_1__PORT2, LCD_1__TRIS2, LCD_1__BIT2);
		FC_CAL_Bit_Low_DDR(LCD_1__PORT3, LCD_1__TRIS3, LCD_1__BIT3);
		FC_CAL_Bit_Low_DDR(LCD_1__PORT4, LCD_1__TRIS4, LCD_1__RS);
		FC_CAL_Bit_Low_DDR(LCD_1__PORT5, LCD_1__TRIS5, LCD_1__E);

		Wdt_Delay_Ms(12);

		FCD_LCDDisplay0_RawSend(0x33, 0);
		Wdt_Delay_Ms(2);
		FCD_LCDDisplay0_RawSend(0x33, 0);
		Wdt_Delay_Ms(2);
		FCD_LCDDisplay0_RawSend(0x32, 0);
		Wdt_Delay_Ms(2);
		FCD_LCDDisplay0_RawSend(0x2c, 0);
		Wdt_Delay_Ms(2);
		FCD_LCDDisplay0_RawSend(0x06, 0);
		Wdt_Delay_Ms(2);
		FCD_LCDDisplay0_RawSend(0x0c, 0);
		Wdt_Delay_Ms(2);

		//clear the display
		FCD_LCDDisplay0_RawSend(0x01, 0);
		Wdt_Delay_Ms(2);
		FCD_LCDDisplay0_RawSend(0x02, 0);
		Wdt_Delay_Ms(2);

}

void FCD_LCDDisplay0_Clear()
{
	
		FCD_LCDDisplay0_RawSend(0x01, 0);
		Wdt_Delay_Ms(2);
		FCD_LCDDisplay0_RawSend(0x02, 0);
		Wdt_Delay_Ms(2);

}

void FCD_LCDDisplay0_PrintASCII(MX_UINT8 Character)
{
	
		FCD_LCDDisplay0_RawSend(Character, 0x10);

}

void FCD_LCDDisplay0_Command(MX_UINT8 in)
{
	
		FCD_LCDDisplay0_RawSend(in, 0);
		Wdt_Delay_Ms(2);

}

void FCD_LCDDisplay0_Cursor(MX_UINT8 x, MX_UINT8 y)
{
	
	  #if (LCD_1__ROWCNT == 1)
	    y=0x80;
	  #endif

	  #if (LCD_1__ROWCNT == 2)
		if (y==0)
			y=0x80;
		else
			y=0xc0;
	  #endif

	  #if (LCD_1__ROWCNT == 4)
		if (y==0)
			y=0x80;
		else if (y==1)
			y=0xc0;

		#if (LCD_1__COLCNT == 16)
			else if (y==2)
				y=0x90;
			else
				y=0xd0;
		#endif

		#if (LCD_1__COLCNT == 20)
			else if (y==2)
				y=0x94;
			else
				y=0xd4;
		#endif
	  #endif

		FCD_LCDDisplay0_RawSend(y+x, 0);
		Wdt_Delay_Ms(2);

}

void FCD_LCDDisplay0_PrintNumber(MX_SINT16 Number)
{
	
		MX_SINT16 tmp_int;
		MX_UINT8 tmp_byte;

		if (Number < 0)
		{
			FCD_LCDDisplay0_RawSend('-', 0x10);
			Number = 0 - Number;
		}

		tmp_int = Number;
		if (Number >= 10000)
		{
			tmp_byte = tmp_int / 10000;
			FCD_LCDDisplay0_RawSend('0' + tmp_byte, 0x10);

			while (tmp_byte > 0)
			{
				tmp_int = tmp_int - 10000;
				tmp_byte--;
			}
		}
		if (Number >= 1000)
		{
			tmp_byte = tmp_int / 1000;
			FCD_LCDDisplay0_RawSend('0' + tmp_byte, 0x10);

			while (tmp_byte > 0)
			{
				tmp_int = tmp_int - 1000;
				tmp_byte--;
			}
		}
		if (Number >= 100)
		{
			tmp_byte = tmp_int / 100;
			FCD_LCDDisplay0_RawSend('0' + tmp_byte, 0x10);

			while (tmp_byte > 0)
			{
				tmp_int = tmp_int - 100;
				tmp_byte--;
			}
		}
		if (Number >= 10)
		{
			tmp_byte = tmp_int / 10;
			FCD_LCDDisplay0_RawSend('0' + tmp_byte, 0x10);

			while (tmp_byte > 0)
			{
				tmp_int = tmp_int - 10;
				tmp_byte--;
			}
		}
		FCD_LCDDisplay0_RawSend('0' + tmp_int, 0x10);

}

void FCD_LCDDisplay0_PrintString(MX_STRING String, MX_UINT8 MSZ_String)
{
	
		MX_UINT8 idx = 0;

		for (idx=0; idx<MSZ_String; idx++)
		{
			if (String[idx] == 0)
			{
				break;
			}
			FCD_LCDDisplay0_RawSend(String[idx], 0x10);
		}

}

void FCD_LCDDisplay0_ScrollDisplay(MX_UINT8 Direction, MX_UINT8 Num_Positions)
{
	
		MX_UINT8 cmd = 0;
		MX_UINT8 count;

		//Choose the direction
		switch (Direction)
		{
			case 0:
			case 'l':
			case 'L':

				cmd = 0x18;
				break;

			case 1:
			case 'r':
			case 'R':

				cmd = 0x1C;
				break;

			default:
				break;
		}

		//If direction accepted then scroll the specified amount
		if (cmd)
		{
			for (count = 0; count < Num_Positions; count++)
				FCD_LCDDisplay0_Command(cmd);
		}

}

void FCD_LCDDisplay0_ClearLine(MX_UINT8 Line)
{
	
		MX_UINT8 count;
		MX_UINT8 rowcount;

		//Define number of columns per line
		#if (LCD_1__ROWCNT == 1)
			rowcount=80;
		#endif

		#if (LCD_1__ROWCNT == 2)
			rowcount=40;
		#endif

		#if (LCD_1__ROWCNT == 4)
			#if (LCD_1__COLCNT == 16)
				rowcount=16;
			#endif
			#if (LCD_1__COLCNT == 20)
				rowcount=20;
			#endif
		#endif

		//Start at beginning of the line
		FCD_LCDDisplay0_Cursor (0, Line);

		//Send out spaces to clear line
		for (count = 0; count < rowcount; count++)
			FCD_LCDDisplay0_RawSend(' ', 0x10);

		//Move back to the beginning of the line.
		FCD_LCDDisplay0_Cursor (0, Line);

}

void FCD_LCDDisplay0_RAM_Write(MX_UINT8 nIdx, MX_UINT8 d0, MX_UINT8 d1, MX_UINT8 d2, MX_UINT8 d3, MX_UINT8 d4, MX_UINT8 d5, MX_UINT8 d6, MX_UINT8 d7)
{
	   //set CGRAM address

	   FCD_LCDDisplay0_RawSend(64 + (nIdx << 3), 0);
	   delay_ms(2);

	   //write CGRAM data
	   FCD_LCDDisplay0_RawSend(d0, 0x10);
	   FCD_LCDDisplay0_RawSend(d1, 0x10);
	   FCD_LCDDisplay0_RawSend(d2, 0x10);
	   FCD_LCDDisplay0_RawSend(d3, 0x10);
	   FCD_LCDDisplay0_RawSend(d4, 0x10);
	   FCD_LCDDisplay0_RawSend(d5, 0x10);
	   FCD_LCDDisplay0_RawSend(d6, 0x10);
	   FCD_LCDDisplay0_RawSend(d7, 0x10);

	   //Clear the display
	   FCD_LCDDisplay0_RawSend(0x01, 0);
	   delay_ms(2);
	   FCD_LCDDisplay0_RawSend(0x02, 0);
	   delay_ms(2);

}



//RS232(0): //Macro implementations


void FCD_RS2320_SendRS232Char(MX_SINT16 nChar)
{
	
		RS232_2_UART_Send ( nChar);

}

void FCD_RS2320_SendRS232String(MX_STRING String, MX_UINT8 MSZ_String)
{
	
		MX_UINT8 idx;
		for(idx = 0; idx < MSZ_String; idx++)
		{
			if (String[idx] == 0)
				break;
			else RS232_2_UART_Send ( String[idx] );
		}

}

MX_SINT16 FCD_RS2320_ReceiveRS232Char(MX_UINT8 nTimeout)
{
	
		return ( RS232_2_UART_Receive ( nTimeout) );

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
			in = RS232_2_UART_Receive ( nTimeout);
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
	
		RS232_2_UART_Update_Baud (newbaud);

}



//PWM(0): //Macro implementations


void FCD_PWM0_Enable()
{
	
		PWM_5_PWM_Change_Period (MX_PWM_PERIOD, MX_PWM_PRESCALE1);
		PWM_5_PWM_Enable_Channel ();

}

void FCD_PWM0_Disable()
{
	
		PWM_5_PWM_Disable_Channel();

}

void FCD_PWM0_SetDutyCycle(MX_UINT8 nDuty)
{
	
		PWM_5_PWM_Set_Duty_8Bit(nDuty);

}

void FCD_PWM0_ChangePeriod(MX_UINT8 nPeriodVal, MX_UINT8 nPrescalerVal)
{
	
		PWM_5_PWM_Change_Period (nPeriodVal, nPrescalerVal);

}

void FCD_PWM0_SetDutyCycle10bit(MX_SINT16 nDuty)
{
	
		PWM_5_PWM_Set_Duty_10Bit(nDuty);

}

#include "C:\Program Files (x86)\Flowcode\v5\CAL\includes.c"

//Macro implementations


void FCM_Equipment1()
{

	//Decision
	//Decision: eq1_se1 = 0 AND eq1_se2 = 0 AND eq1_flag = 0?
	if (FCV_EQ1_SE1 == 0 & FCV_EQ1_SE2 == 0 & FCV_EQ1_FLAG == 0)
	{

		//Call Component Macro
		//Call Component Macro: SendRS232String("E1B")
		FCD_RS2320_SendRS232String("E1B", 3);

		//Delay
		//Delay: 200 ms
		delay_ms(200);

		//Calculation
		//Calculation:
		//  eq1_flag = 1
		FCV_EQ1_FLAG = 1;

	} else {

		//Decision
		//Decision: eq1_se1 = 1 AND eq1_se2 = 0 AND eq1_flag = 1?
		if (FCV_EQ1_SE1 == 1 & FCV_EQ1_SE2 == 0 & FCV_EQ1_FLAG == 1)
		{

			//Call Component Macro
			//Call Component Macro: SendRS232String("E1P")
			FCD_RS2320_SendRS232String("E1P", 3);

			//Delay
			//Delay: 500 ms
			delay_ms(255);
			delay_ms(245);

			//Calculation
			//Calculation:
			//  eq1_flag = 0
			FCV_EQ1_FLAG = 0;

		} else {

			//Decision
			//Decision: eq1_se1 = 0 AND eq1_se2 = 1?
			if (FCV_EQ1_SE1 == 0 & FCV_EQ1_SE2 == 1)
			{

				//Calculation
				//Calculation:
				//  eq1_errorflag = 0
				FCV_EQ1_ERRORFLAG = 0;

				//Loop
				//Loop: While eq1_se2 = 1
				while (FCV_EQ1_SE2 == 1)
				{

					//Input
					//Input: A1 -> eq1_se2
					trisa = trisa | 0x02;
					FCV_EQ1_SE2 = ((porta & 0x02) == 0x02);

					//Decision
					//Decision: eq1_errorflag = 0?
					if (FCV_EQ1_ERRORFLAG == 0)
					{

						//Call Component Macro
						//Call Component Macro: SendRS232String("E1R")
						FCD_RS2320_SendRS232String("E1R", 3);

						//Delay
						//Delay: 500 ms
						delay_ms(255);
						delay_ms(245);

						//Calculation
						//Calculation:
						//  eq1_errorflag = 1
						FCV_EQ1_ERRORFLAG = 1;

					// } else {

					}

					//Call Component Macro
					//Call Component Macro: SetDutyCycle(76)
					FCD_PWM0_SetDutyCycle(76);

					//Delay
					//Delay: 100 ms
					delay_ms(100);

					//Call Component Macro
					//Call Component Macro: SetDutyCycle(0)
					FCD_PWM0_SetDutyCycle(0);

					//Delay
					//Delay: 100 ms
					delay_ms(100);


				}

				//Calculation
				//Calculation:
				//  eq1_flag = 0
				FCV_EQ1_FLAG = 0;

			// } else {

			}

		}

	}

}


void FCM_Equipment2()
{

	//Decision
	//Decision: eq2_se1 = 0 AND eq2_se2 = 0 AND eq2_flag = 0?
	if (FCV_EQ2_SE1 == 0 & FCV_EQ2_SE2 == 0 & FCV_EQ2_FLAG == 0)
	{

		//Call Component Macro
		//Call Component Macro: SendRS232String("E2B")
		FCD_RS2320_SendRS232String("E2B", 3);

		//Delay
		//Delay: 200 ms
		delay_ms(200);

		//Calculation
		//Calculation:
		//  eq2_flag = 1
		FCV_EQ2_FLAG = 1;

	} else {

		//Decision
		//Decision: eq2_se1 = 1 AND eq2_se2 = 0 AND eq2_flag = 1?
		if (FCV_EQ2_SE1 == 1 & FCV_EQ2_SE2 == 0 & FCV_EQ2_FLAG == 1)
		{

			//Call Component Macro
			//Call Component Macro: SendRS232String("E2P")
			FCD_RS2320_SendRS232String("E2P", 3);

			//Delay
			//Delay: 500 ms
			delay_ms(255);
			delay_ms(245);

			//Calculation
			//Calculation:
			//  eq2_flag = 0
			FCV_EQ2_FLAG = 0;

		} else {

			//Decision
			//Decision: eq2_se1 = 0 AND eq2_se2 = 1?
			if (FCV_EQ2_SE1 == 0 & FCV_EQ2_SE2 == 1)
			{

				//Calculation
				//Calculation:
				//  eq2_errorflag = 0
				FCV_EQ2_ERRORFLAG = 0;

				//Loop
				//Loop: While eq2_se2 = 1
				while (FCV_EQ2_SE2 == 1)
				{

					//Input
					//Input: A3 -> eq2_se2
					trisa = trisa | 0x08;
					FCV_EQ2_SE2 = ((porta & 0x08) == 0x08);

					//Decision
					//Decision: eq2_errorflag = 0?
					if (FCV_EQ2_ERRORFLAG == 0)
					{

						//Call Component Macro
						//Call Component Macro: SendRS232String("E2R")
						FCD_RS2320_SendRS232String("E2R", 3);

						//Delay
						//Delay: 500 ms
						delay_ms(255);
						delay_ms(245);

						//Calculation
						//Calculation:
						//  eq2_errorflag = 1
						FCV_EQ2_ERRORFLAG = 1;

					// } else {

					}

					//Call Component Macro
					//Call Component Macro: SetDutyCycle(76)
					FCD_PWM0_SetDutyCycle(76);

					//Delay
					//Delay: 100 ms
					delay_ms(100);

					//Call Component Macro
					//Call Component Macro: SetDutyCycle(0)
					FCD_PWM0_SetDutyCycle(0);

					//Delay
					//Delay: 100 ms
					delay_ms(100);


				}

				//Calculation
				//Calculation:
				//  eq2_flag = 0
				FCV_EQ2_FLAG = 0;

			// } else {

			}

		}

	}

}


void FCM_Equipment3()
{

	//Decision
	//Decision: eq3_se1 = 0 AND eq3_se2 = 0 AND eq3_flag = 0?
	if (FCV_EQ3_SE1 == 0 & FCV_EQ3_SE2 == 0 & FCV_EQ3_FLAG == 0)
	{

		//Call Component Macro
		//Call Component Macro: SendRS232String("E3B")
		FCD_RS2320_SendRS232String("E3B", 3);

		//Delay
		//Delay: 200 ms
		delay_ms(200);

		//Calculation
		//Calculation:
		//  eq3_flag = 1
		FCV_EQ3_FLAG = 1;

	} else {

		//Decision
		//Decision: eq3_se1 = 1 AND eq3_se2 = 0 AND eq3_flag = 1?
		if (FCV_EQ3_SE1 == 1 & FCV_EQ3_SE2 == 0 & FCV_EQ3_FLAG == 1)
		{

			//Call Component Macro
			//Call Component Macro: SendRS232String("E3P")
			FCD_RS2320_SendRS232String("E3P", 3);

			//Delay
			//Delay: 500 ms
			delay_ms(255);
			delay_ms(245);

			//Calculation
			//Calculation:
			//  eq3_flag = 0
			FCV_EQ3_FLAG = 0;

		} else {

			//Decision
			//Decision: eq3_se1 = 0 AND eq3_se2 = 1?
			if (FCV_EQ3_SE1 == 0 & FCV_EQ3_SE2 == 1)
			{

				//Calculation
				//Calculation:
				//  eq3_errorflag = 0
				FCV_EQ3_ERRORFLAG = 0;

				//Loop
				//Loop: While eq3_se2 = 1
				while (FCV_EQ3_SE2 == 1)
				{

					//Input
					//Input: A5 -> eq3_se2
					trisa = trisa | 0x20;
					FCV_EQ3_SE2 = ((porta & 0x20) == 0x20);

					//Decision
					//Decision: eq3_errorflag = 0?
					if (FCV_EQ3_ERRORFLAG == 0)
					{

						//Call Component Macro
						//Call Component Macro: SendRS232String("E3R")
						FCD_RS2320_SendRS232String("E3R", 3);

						//Delay
						//Delay: 500 ms
						delay_ms(255);
						delay_ms(245);

						//Calculation
						//Calculation:
						//  eq3_errorflag = 1
						FCV_EQ3_ERRORFLAG = 1;

					// } else {

					}

					//Call Component Macro
					//Call Component Macro: SetDutyCycle(76)
					FCD_PWM0_SetDutyCycle(76);

					//Delay
					//Delay: 100 ms
					delay_ms(100);

					//Call Component Macro
					//Call Component Macro: SetDutyCycle(0)
					FCD_PWM0_SetDutyCycle(0);

					//Delay
					//Delay: 100 ms
					delay_ms(100);


				}

				//Calculation
				//Calculation:
				//  eq3_flag = 0
				FCV_EQ3_FLAG = 0;

			// } else {

			}

		}

	}

}


void FCM_init()
{

	//Input
	//Input: A0 -> eq1_se1
	trisa = trisa | 0x01;
	FCV_EQ1_SE1 = ((porta & 0x01) == 0x01);

	//Input
	//Input: A1 -> eq1_se2
	trisa = trisa | 0x02;
	FCV_EQ1_SE2 = ((porta & 0x02) == 0x02);

	//Input
	//Input: A2 -> eq2_se1
	trisa = trisa | 0x04;
	FCV_EQ2_SE1 = ((porta & 0x04) == 0x04);

	//Input
	//Input: A3 -> eq2_se2
	trisa = trisa | 0x08;
	FCV_EQ2_SE2 = ((porta & 0x08) == 0x08);

	//Input
	//Input: A4 -> eq3_se1
	trisa = trisa | 0x10;
	FCV_EQ3_SE1 = ((porta & 0x10) == 0x10);

	//Input
	//Input: A5 -> eq3_se2
	trisa = trisa | 0x20;
	FCV_EQ3_SE2 = ((porta & 0x20) == 0x20);

	//Decision
	//Decision: eq1_se1 = 1 OR eq1_se2 = 1?
	if (FCV_EQ1_SE1 == 1 | FCV_EQ1_SE2 == 1)
	{

		//Calculation
		//Calculation:
		//  eq1_flag = 1
		FCV_EQ1_FLAG = 1;

	// } else {

	}

	//Decision
	//Decision: eq2_se1 = 1 OR eq2_se2 = 1?
	if (FCV_EQ2_SE1 == 1 | FCV_EQ2_SE2 == 1)
	{

		//Calculation
		//Calculation:
		//  eq2_flag = 1
		FCV_EQ2_FLAG = 1;

	// } else {

	}

	//Decision
	//Decision: eq3_se1 = 1 OR eq3_se2 = 1?
	if (FCV_EQ3_SE1 == 1 | FCV_EQ3_SE2 == 1)
	{

		//Calculation
		//Calculation:
		//  eq3_flag = 1
		FCV_EQ3_FLAG = 1;

	// } else {

	}

}


void FCM_check()
{

	//Input
	//Input: A0 -> eq1_se1
	trisa = trisa | 0x01;
	FCV_EQ1_SE1 = ((porta & 0x01) == 0x01);

	//Input
	//Input: A1 -> eq1_se2
	trisa = trisa | 0x02;
	FCV_EQ1_SE2 = ((porta & 0x02) == 0x02);

	//Input
	//Input: A2 -> eq2_se1
	trisa = trisa | 0x04;
	FCV_EQ2_SE1 = ((porta & 0x04) == 0x04);

	//Input
	//Input: A3 -> eq2_se2
	trisa = trisa | 0x08;
	FCV_EQ2_SE2 = ((porta & 0x08) == 0x08);

	//Input
	//Input: A4 -> eq3_se1
	trisa = trisa | 0x10;
	FCV_EQ3_SE1 = ((porta & 0x10) == 0x10);

	//Input
	//Input: A5 -> eq3_se2
	trisa = trisa | 0x20;
	FCV_EQ3_SE2 = ((porta & 0x20) == 0x20);

	//Decision
	//Decision: eq1_se1 = 0 AND eq1_se2 = 0?
	if (FCV_EQ1_SE1 == 0 & FCV_EQ1_SE2 == 0)
	{

		//Call Component Macro
		//Call Component Macro: SendRS232String("E1B")
		FCD_RS2320_SendRS232String("E1B", 3);

	} else {

		//Decision
		//Decision: eq1_se1 = 1 AND eq1_se2 = 0?
		if (FCV_EQ1_SE1 == 1 & FCV_EQ1_SE2 == 0)
		{

			//Call Component Macro
			//Call Component Macro: SendRS232String("E1P")
			FCD_RS2320_SendRS232String("E1P", 3);

		} else {

			//Decision
			//Decision: eq1_se1 = 0 AND eq1_se2 = 1?
			if (FCV_EQ1_SE1 == 0 & FCV_EQ1_SE2 == 1)
			{

				//Call Component Macro
				//Call Component Macro: SendRS232String("E1R")
				FCD_RS2320_SendRS232String("E1R", 3);

			// } else {

			}

		}

	}

	//Decision
	//Decision: eq2_se1 = 0 AND eq2_se2 = 0?
	if (FCV_EQ2_SE1 == 0 & FCV_EQ2_SE2 == 0)
	{

		//Call Component Macro
		//Call Component Macro: SendRS232String("E2B")
		FCD_RS2320_SendRS232String("E2B", 3);

	} else {

		//Decision
		//Decision: eq2_se1 = 1 AND eq2_se2 = 0?
		if (FCV_EQ2_SE1 == 1 & FCV_EQ2_SE2 == 0)
		{

			//Call Component Macro
			//Call Component Macro: SendRS232String("E2P")
			FCD_RS2320_SendRS232String("E2P", 3);

		} else {

			//Decision
			//Decision: eq2_se1 = 0 AND eq2_se2 = 1?
			if (FCV_EQ2_SE1 == 0 & FCV_EQ2_SE2 == 1)
			{

				//Call Component Macro
				//Call Component Macro: SendRS232String("E2R")
				FCD_RS2320_SendRS232String("E2R", 3);

			// } else {

			}

		}

	}

	//Decision
	//Decision: eq3_se1 = 0 AND eq3_se2 = 0?
	if (FCV_EQ3_SE1 == 0 & FCV_EQ3_SE2 == 0)
	{

		//Call Component Macro
		//Call Component Macro: SendRS232String("E3B")
		FCD_RS2320_SendRS232String("E3B", 3);

	} else {

		//Decision
		//Decision: eq3_se1 = 1 AND eq3_se2 = 0?
		if (FCV_EQ3_SE1 == 1 & FCV_EQ3_SE2 == 0)
		{

			//Call Component Macro
			//Call Component Macro: SendRS232String("E3P")
			FCD_RS2320_SendRS232String("E3P", 3);

		} else {

			//Decision
			//Decision: eq3_se1 = 0 AND eq3_se2 = 1?
			if (FCV_EQ3_SE1 == 0 & FCV_EQ3_SE2 == 1)
			{

				//Call Component Macro
				//Call Component Macro: SendRS232String("E3R")
				FCD_RS2320_SendRS232String("E3R", 3);

			// } else {

			}

		}

	}

	//Decision
	//Decision: eq4_se1 = 0 AND eq4_se2 = 0?
	if (FCV_EQ4_SE1 == 0 & FCV_EQ4_SE2 == 0)
	{

		//Call Component Macro
		//Call Component Macro: SendRS232String("E4B")
		FCD_RS2320_SendRS232String("E4B", 3);

	} else {

		//Decision
		//Decision: eq4_se1 = 1 AND eq4_se2 = 0?
		if (FCV_EQ4_SE1 == 1 & FCV_EQ4_SE2 == 0)
		{

			//Call Component Macro
			//Call Component Macro: SendRS232String("E4P")
			FCD_RS2320_SendRS232String("E4P", 3);

		} else {

			//Decision
			//Decision: eq4_se1 = 0 AND eq4_se2 = 1?
			if (FCV_EQ4_SE1 == 0 & FCV_EQ4_SE2 == 1)
			{

				//Call Component Macro
				//Call Component Macro: SendRS232String("E4R")
				FCD_RS2320_SendRS232String("E4R", 3);

			// } else {

			}

		}

	}

}


void FCM_Equipment4()
{

	//Decision
	//Decision: eq4_se1 = 0 AND eq4_se2 = 0 AND eq4_flag = 0?
	if (FCV_EQ4_SE1 == 0 & FCV_EQ4_SE2 == 0 & FCV_EQ4_FLAG == 0)
	{

		//Call Component Macro
		//Call Component Macro: SendRS232String("E4B")
		FCD_RS2320_SendRS232String("E4B", 3);

		//Delay
		//Delay: 200 ms
		delay_ms(200);

		//Calculation
		//Calculation:
		//  eq4_flag = 1
		FCV_EQ4_FLAG = 1;

	} else {

		//Decision
		//Decision: eq4_se1 = 1 AND eq4_se2 = 0 AND eq4_flag = 1?
		if (FCV_EQ4_SE1 == 1 & FCV_EQ4_SE2 == 0 & FCV_EQ4_FLAG == 1)
		{

			//Call Component Macro
			//Call Component Macro: SendRS232String("E4P")
			FCD_RS2320_SendRS232String("E4P", 3);

			//Delay
			//Delay: 500 ms
			delay_ms(255);
			delay_ms(245);

			//Calculation
			//Calculation:
			//  eq4_flag = 0
			FCV_EQ4_FLAG = 0;

		} else {

			//Decision
			//Decision: eq4_se1 = 0 AND eq4_se2 = 1?
			if (FCV_EQ4_SE1 == 0 & FCV_EQ4_SE2 == 1)
			{

				//Calculation
				//Calculation:
				//  eq4_errorflag = 0
				FCV_EQ4_ERRORFLAG = 0;

				//Loop
				//Loop: While eq4_se2 = 1
				while (FCV_EQ4_SE2 == 1)
				{

					//Input
					//Input: E1 -> eq4_se2
					trise = trise | 0x02;
					FCV_EQ4_SE2 = ((porte & 0x02) == 0x02);

					//Decision
					//Decision: eq4_errorflag = 0?
					if (FCV_EQ4_ERRORFLAG == 0)
					{

						//Call Component Macro
						//Call Component Macro: SendRS232String("E4R")
						FCD_RS2320_SendRS232String("E4R", 3);

						//Delay
						//Delay: 500 ms
						delay_ms(255);
						delay_ms(245);

						//Calculation
						//Calculation:
						//  eq4_errorflag = 1
						FCV_EQ4_ERRORFLAG = 1;

					// } else {

					}

					//Call Component Macro
					//Call Component Macro: SetDutyCycle(76)
					FCD_PWM0_SetDutyCycle(76);

					//Delay
					//Delay: 100 ms
					delay_ms(100);

					//Call Component Macro
					//Call Component Macro: SetDutyCycle(0)
					FCD_PWM0_SetDutyCycle(0);

					//Delay
					//Delay: 100 ms
					delay_ms(100);


				}

				//Calculation
				//Calculation:
				//  eq4_flag = 0
				FCV_EQ4_FLAG = 0;

			// } else {

			}

		}

	}

}



void main()
{
	//Initialization
	ansel = 0;
anselh = 0;

	
		RS232_2_UART_Init( );		//Call initialise function


	//Interrupt initialization code
	option_reg = 0xC0;


	//Calculation
	//Calculation:
	//  siren_flag = 0
	FCV_SIREN_FLAG = 0;

	//Call Component Macro
	//Call Component Macro: Start()
	FCD_LCDDisplay0_Start();

	//Call Component Macro
	//Call Component Macro: Clear()
	FCD_LCDDisplay0_Clear();

	//Call Component Macro
	//Call Component Macro: Cursor(0, 0)
	FCD_LCDDisplay0_Cursor(0, 0);

	//Call Component Macro
	//Call Component Macro: PrintString("Kenny Neutron's")
	FCD_LCDDisplay0_PrintString("Kenny Neutron's", 15);

	//Call Component Macro
	//Call Component Macro: Cursor(0, 1)
	FCD_LCDDisplay0_Cursor(0, 1);

	//Call Component Macro
	//Call Component Macro: PrintString("Innovations")
	FCD_LCDDisplay0_PrintString("Innovations", 11);

	//Call Component Macro
	//Call Component Macro: Enable()
	FCD_PWM0_Enable();

	//Call Macro
	//Call Macro: init()
	FCM_init();

	//Calculation
	//Calculation:
	//  siren = 0
	FCV_SIREN = 0;

	//Loop
	//Loop: While 1
	while (1)
	{

		//Input
		//Input: A0 -> eq1_se1
		trisa = trisa | 0x01;
		FCV_EQ1_SE1 = ((porta & 0x01) == 0x01);

		//Input
		//Input: A1 -> eq1_se2
		trisa = trisa | 0x02;
		FCV_EQ1_SE2 = ((porta & 0x02) == 0x02);

		//Input
		//Input: A2 -> eq2_se1
		trisa = trisa | 0x04;
		FCV_EQ2_SE1 = ((porta & 0x04) == 0x04);

		//Input
		//Input: A3 -> eq2_se2
		trisa = trisa | 0x08;
		FCV_EQ2_SE2 = ((porta & 0x08) == 0x08);

		//Input
		//Input: A4 -> eq3_se1
		trisa = trisa | 0x10;
		FCV_EQ3_SE1 = ((porta & 0x10) == 0x10);

		//Input
		//Input: A5 -> eq3_se2
		trisa = trisa | 0x20;
		FCV_EQ3_SE2 = ((porta & 0x20) == 0x20);

		//Input
		//Input: E0 -> eq4_se1
		trise = trise | 0x01;
		FCV_EQ4_SE1 = ((porte & 0x01) == 0x01);

		//Input
		//Input: E1 -> eq4_se2
		trise = trise | 0x02;
		FCV_EQ4_SE2 = ((porte & 0x02) == 0x02);

		//Input
		//Input: D2 -> eq5_se1
		trisd = trisd | 0x04;
		FCV_EQ5_SE1 = ((portd & 0x04) == 0x04);

		//Input
		//Input: D3 -> eq5_se2
		trisd = trisd | 0x08;
		FCV_EQ5_SE2 = ((portd & 0x08) == 0x08);

		//Input
		//Input: D0 -> eq6_se1
		trisd = trisd | 0x01;
		FCV_EQ6_SE1 = ((portd & 0x01) == 0x01);

		//Input
		//Input: D1 -> eq6_se2
		trisd = trisd | 0x02;
		FCV_EQ6_SE2 = ((portd & 0x02) == 0x02);

		//Input
		//Input: D7 -> doorlock
		trisd = trisd | 0x80;
		FCV_DOORLOCK = ((portd & 0x80) == 0x80);

		//Decision
		//Decision: siren_flag = 1?
		if (FCV_SIREN_FLAG == 1)
		{

			//Switch
			//Switch: siren?
			switch (FCV_SIREN)
			{
				case 0:
				{
					//Output
					//Output: 0 -> D6
					trisd = trisd & 0xBF;
					if ((0))
						portd = (portd & 0xBF) | 0x40;
					else
						portd = portd & 0xBF;

					break;
				}
				case 1:
				{
					//Output
					//Output: 1 -> D6
					trisd = trisd & 0xBF;
					if ((1))
						portd = (portd & 0xBF) | 0x40;
					else
						portd = portd & 0xBF;

					break;
				}
				// default:

			}

		} else {

			//Switch
			//Switch: doorlock?
			switch (FCV_DOORLOCK)
			{
				case 0:
				{
					//Calculation
					//Calculation:
					//  siren = 1
					FCV_SIREN = 1;

					break;
				}
				case 1:
				{
					//Calculation
					//Calculation:
					//  siren = 0
					FCV_SIREN = 0;

					break;
				}
				// default:

			}

			//Switch
			//Switch: siren?
			switch (FCV_SIREN)
			{
				case 0:
				{
					//Output
					//Output: 0 -> D6
					trisd = trisd & 0xBF;
					if ((0))
						portd = (portd & 0xBF) | 0x40;
					else
						portd = portd & 0xBF;

					break;
				}
				case 1:
				{
					//Output
					//Output: 1 -> D6
					trisd = trisd & 0xBF;
					if ((1))
						portd = (portd & 0xBF) | 0x40;
					else
						portd = portd & 0xBF;

					break;
				}
				// default:

			}

		}

		//Call Macro
		//Call Macro: Equipment1()
		FCM_Equipment1();

		//Call Macro
		//Call Macro: Equipment2()
		FCM_Equipment2();

		//Call Macro
		//Call Macro: Equipment3()
		FCM_Equipment3();

		//Call Macro
		//Call Macro: Equipment4()
		FCM_Equipment4();

		//Call Component Macro
		//Call Component Macro: rx=ReceiveRS232Char(100)
		FCV_RX = FCD_RS2320_ReceiveRS232Char(100);

		//Decision
		//Decision: rx = 'C'?
		if (FCV_RX == 'C')
		{

			//Call Macro
			//Call Macro: check()
			FCM_check();

			//Calculation
			//Calculation:
			//  siren = 1
			FCV_SIREN = 1;

		// } else {

		}

		//Decision
		//Decision: rx = 'B'?
		if (FCV_RX == 'B')
		{

			//Calculation
			//Calculation:
			//  siren = 0
			FCV_SIREN = 0;

		// } else {

		}

		//Decision
		//Decision: rx = 'D'?
		if (FCV_RX == 'D')
		{

			//Calculation
			//Calculation:
			//  siren = 1
			//  siren_flag = 1
			FCV_SIREN = 1;
			FCV_SIREN_FLAG = 1;

		// } else {

		}

		//Decision
		//Decision: rx = 'E'?
		if (FCV_RX == 'E')
		{

			//Calculation
			//Calculation:
			//  siren = 0
			//  siren_flag = 0
			FCV_SIREN = 0;
			FCV_SIREN_FLAG = 0;

		// } else {

		}

		//Call Component Macro
		//Call Component Macro: Cursor(14, 1)
		FCD_LCDDisplay0_Cursor(14, 1);

		//Call Component Macro
		//Call Component Macro: PrintNumber(siren)
		FCD_LCDDisplay0_PrintNumber(FCV_SIREN);


	}

	mainendloop: goto mainendloop;
}

void MX_INTERRUPT_MACRO(void)
{
}



