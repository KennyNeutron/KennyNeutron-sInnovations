;/////////////////////////////////////////////////////////////////////////////////
;// Code Generator: BoostC Compiler - http://www.sourceboost.com
;// Version       : 7.03
;// License Type  : Pro License
;// Limitations   : PIC12,PIC16 max code size:Unlimited, max RAM banks:Unlimited
;/////////////////////////////////////////////////////////////////////////////////

	include "P16F887.inc"
; Heap block 0, size:96 (0x00000110 - 0x0000016F)
__HEAP_BLOCK0_BANK               EQU	0x00000002
__HEAP_BLOCK0_START_OFFSET       EQU	0x00000010
__HEAP_BLOCK0_END_OFFSET         EQU	0x0000006F
; Heap block 1, size:96 (0x00000190 - 0x000001EF)
__HEAP_BLOCK1_BANK               EQU	0x00000003
__HEAP_BLOCK1_START_OFFSET       EQU	0x00000010
__HEAP_BLOCK1_END_OFFSET         EQU	0x0000006F
; Heap block 2, size:56 (0x000000B8 - 0x000000EF)
__HEAP_BLOCK2_BANK               EQU	0x00000001
__HEAP_BLOCK2_START_OFFSET       EQU	0x00000038
__HEAP_BLOCK2_END_OFFSET         EQU	0x0000006F
; Heap block 3, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK3_BANK               EQU	0x00000000
__HEAP_BLOCK3_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK3_END_OFFSET         EQU	0x00000000
__div_16_1_00003_arg_a           EQU	0x000000A2 ; bytes:2
__div_16_1_00003_arg_b           EQU	0x000000A4 ; bytes:2
CompTempVarRet214                EQU	0x000000AA ; bytes:2
__div_16_1_00003_1_r             EQU	0x000000A7 ; bytes:2
__div_16_1_00003_1_i             EQU	0x000000A9 ; bytes:1
__rem_16_1_00004_arg_a           EQU	0x0000007C ; bytes:2
__rem_16_1_00004_arg_b           EQU	0x000000A0 ; bytes:2
CompTempVarRet216                EQU	0x000000A9 ; bytes:2
__rem_16_1_00004_1_c             EQU	0x000000A6 ; bytes:2
__rem_16_1_00004_1_i             EQU	0x000000A8 ; bytes:1
__div_8_8_00000_arg_a            EQU	0x0000007C ; bytes:1
__div_8_8_00000_arg_b            EQU	0x0000007D ; bytes:1
CompTempVarRet218                EQU	0x000000A1 ; bytes:1
__div_8_8_00000_1_r              EQU	0x0000007E ; bytes:1
__div_8_8_00000_1_i              EQU	0x000000A0 ; bytes:1
__rem_8_8_00000_arg_a            EQU	0x0000007C ; bytes:1
__rem_8_8_00000_arg_b            EQU	0x0000007D ; bytes:1
CompTempVarRet220                EQU	0x000000A1 ; bytes:1
__rem_8_8_00000_1_c              EQU	0x0000007E ; bytes:1
__rem_8_8_00000_1_i              EQU	0x000000A0 ; bytes:1
gbl_status                       EQU	0x00000003 ; bytes:1
__mul_32u__0000F_arg_a           EQU	0x000000A7 ; bytes:4
__mul_32u__0000F_arg_b           EQU	0x000000AB ; bytes:4
CompTempVarRet464                EQU	0x000000B4 ; bytes:4
__mul_32u__0000F_1_i             EQU	0x000000B3 ; bytes:1
gbl_14_LSR                       EQU	0x00000032 ; bytes:4
gbl_float_detect_tininess        EQU	0x0000005A ; bytes:1
gbl_float_rounding_mode          EQU	0x0000005B ; bytes:1
gbl_float_exception_flags        EQU	0x0000005C ; bytes:1
gbl_15_gbl_aSig                  EQU	0x00000036 ; bytes:4
gbl_15_gbl_bSig                  EQU	0x0000003A ; bytes:4
gbl_15_gbl_zSig                  EQU	0x0000003E ; bytes:4
gbl_15_gbl_aExp                  EQU	0x0000005D ; bytes:1
gbl_15_gbl_bExp                  EQU	0x0000005E ; bytes:1
gbl_15_gbl_zExp                  EQU	0x00000052 ; bytes:2
gbl_15_gbl_aSign                 EQU	0x0000005F ; bytes:1
gbl_15_gbl_bSign                 EQU	0x00000060 ; bytes:1
gbl_15_gbl_zSign                 EQU	0x00000061 ; bytes:1
gbl_15_gbl_zSigZero              EQU	0x00000062 ; bytes:1
gbl_15_gbl_ret                   EQU	0x00000042 ; bytes:4
gbl_indf                         EQU	0x00000000 ; bytes:1
gbl_tmr0                         EQU	0x00000001 ; bytes:1
gbl_pcl                          EQU	0x00000002 ; bytes:1
gbl_fsr                          EQU	0x00000004 ; bytes:1
gbl_porta                        EQU	0x00000005 ; bytes:1
gbl_portb                        EQU	0x00000006 ; bytes:1
gbl_portc                        EQU	0x00000007 ; bytes:1
gbl_portd                        EQU	0x00000008 ; bytes:1
gbl_porte                        EQU	0x00000009 ; bytes:1
gbl_pclath                       EQU	0x0000000A ; bytes:1
gbl_intcon                       EQU	0x0000000B ; bytes:1
gbl_pir1                         EQU	0x0000000C ; bytes:1
gbl_pir2                         EQU	0x0000000D ; bytes:1
gbl_tmr1l                        EQU	0x0000000E ; bytes:1
gbl_tmr1h                        EQU	0x0000000F ; bytes:1
gbl_t1con                        EQU	0x00000010 ; bytes:1
gbl_tmr2                         EQU	0x00000011 ; bytes:1
gbl_t2con                        EQU	0x00000012 ; bytes:1
gbl_sspbuf                       EQU	0x00000013 ; bytes:1
gbl_sspcon                       EQU	0x00000014 ; bytes:1
gbl_ccpr1l                       EQU	0x00000015 ; bytes:1
gbl_ccpr1h                       EQU	0x00000016 ; bytes:1
gbl_ccp1con                      EQU	0x00000017 ; bytes:1
gbl_rcsta                        EQU	0x00000018 ; bytes:1
gbl_txreg                        EQU	0x00000019 ; bytes:1
gbl_rcreg                        EQU	0x0000001A ; bytes:1
gbl_ccpr2l                       EQU	0x0000001B ; bytes:1
gbl_ccpr2h                       EQU	0x0000001C ; bytes:1
gbl_ccp2con                      EQU	0x0000001D ; bytes:1
gbl_adresh                       EQU	0x0000001E ; bytes:1
gbl_adcon0                       EQU	0x0000001F ; bytes:1
gbl_option_reg                   EQU	0x00000081 ; bytes:1
gbl_trisa                        EQU	0x00000085 ; bytes:1
gbl_trisb                        EQU	0x00000086 ; bytes:1
gbl_trisc                        EQU	0x00000087 ; bytes:1
gbl_trisd                        EQU	0x00000088 ; bytes:1
gbl_trise                        EQU	0x00000089 ; bytes:1
gbl_pie1                         EQU	0x0000008C ; bytes:1
gbl_pie2                         EQU	0x0000008D ; bytes:1
gbl_pcon                         EQU	0x0000008E ; bytes:1
gbl_osccon                       EQU	0x0000008F ; bytes:1
gbl_osctune                      EQU	0x00000090 ; bytes:1
gbl_sspcon2                      EQU	0x00000091 ; bytes:1
gbl_pr2                          EQU	0x00000092 ; bytes:1
gbl_sspadd                       EQU	0x00000093 ; bytes:1
gbl_sspmsk                       EQU	0x00000093 ; bytes:1
gbl_msk                          EQU	0x00000093 ; bytes:1
gbl_sspstat                      EQU	0x00000094 ; bytes:1
gbl_wpub                         EQU	0x00000095 ; bytes:1
gbl_iocb                         EQU	0x00000096 ; bytes:1
gbl_vrcon                        EQU	0x00000097 ; bytes:1
gbl_txsta                        EQU	0x00000098 ; bytes:1
gbl_spbrg                        EQU	0x00000099 ; bytes:1
gbl_spbrgh                       EQU	0x0000009A ; bytes:1
gbl_pwm1con                      EQU	0x0000009B ; bytes:1
gbl_eccpas                       EQU	0x0000009C ; bytes:1
gbl_pstrcon                      EQU	0x0000009D ; bytes:1
gbl_adresl                       EQU	0x0000009E ; bytes:1
gbl_adcon1                       EQU	0x0000009F ; bytes:1
gbl_wdtcon                       EQU	0x00000105 ; bytes:1
gbl_cm1con0                      EQU	0x00000107 ; bytes:1
gbl_cm2con0                      EQU	0x00000108 ; bytes:1
gbl_cm2con1                      EQU	0x00000109 ; bytes:1
gbl_eedata                       EQU	0x0000010C ; bytes:1
gbl_eeadr                        EQU	0x0000010D ; bytes:1
gbl_eedath                       EQU	0x0000010E ; bytes:1
gbl_eeadrh                       EQU	0x0000010F ; bytes:1
gbl_srcon                        EQU	0x00000185 ; bytes:1
gbl_baudctl                      EQU	0x00000187 ; bytes:1
gbl_ansel                        EQU	0x00000188 ; bytes:1
gbl_anselh                       EQU	0x00000189 ; bytes:1
gbl_eecon1                       EQU	0x0000018C ; bytes:1
gbl_eecon2                       EQU	0x0000018D ; bytes:1
gbl_FCV_STRING_SCORE_HOME        EQU	0x00000046 ; bytes:3
gbl_FCV_HOME_ONES                EQU	0x00000063 ; bytes:1
gbl_FCV_FOULPERIOD               EQU	0x00000054 ; bytes:2
gbl_FCV_DAT                      EQU	0x00000064 ; bit:0
gbl_FCV_SECONDS                  EQU	0x00000065 ; bytes:1
gbl_FCV_PERIOD                   EQU	0x00000066 ; bytes:1
gbl_FCV_MINUTES                  EQU	0x00000067 ; bytes:1
gbl_FCV_HOME_FOUL                EQU	0x00000068 ; bytes:1
gbl_FCV_AWAY_TENS                EQU	0x00000069 ; bytes:1
gbl_FCV_MINUTE_TENS              EQU	0x0000006A ; bytes:1
gbl_FCV_RECV                     EQU	0x00000020 ; bytes:18
gbl_FCV_BITS                     EQU	0x0000006B ; bytes:1
gbl_FCV_DIGITB                   EQU	0x0000006C ; bytes:1
gbl_FCV_STRING_FOULPERIOD        EQU	0x00000049 ; bytes:3
gbl_FCV_SECONDS_TENS             EQU	0x0000006D ; bytes:1
gbl_FCV_DIGITC                   EQU	0x0000006E ; bytes:1
gbl_FCV_SCORE_AWAY               EQU	0x0000006F ; bytes:1
gbl_FCV_DIGIT                    EQU	0x00000070 ; bytes:1
gbl_FCV_HOME_HUNDRED             EQU	0x00000064 ; bit:1
gbl_FCV_BITS2                    EQU	0x00000071 ; bytes:1
gbl_FCV_AWAY_ONES                EQU	0x00000072 ; bytes:1
gbl_FCV_MINUTE_ONES              EQU	0x00000073 ; bytes:1
gbl_FCV_BITS3                    EQU	0x00000074 ; bytes:1
gbl_FCV_HOME_TENS                EQU	0x00000075 ; bytes:1
gbl_FCV_FLAG                     EQU	0x00000064 ; bit:2
gbl_FCV_HEADER                   EQU	0x00000076 ; bytes:1
gbl_FCV_SCORE_HOME               EQU	0x00000077 ; bytes:1
gbl_FCV_AWAY_HUNDREDS            EQU	0x00000064 ; bit:3
gbl_FCV_SECONDS_ONES             EQU	0x00000078 ; bytes:1
gbl_FCV_STRING_SCORE_AWAY        EQU	0x0000004C ; bytes:3
gbl_FCV_IHAP                     EQU	0x00000079 ; bytes:1
gbl_FCV_DAT2                     EQU	0x00000064 ; bit:4
gbl_FCV_STRING_SECONDS           EQU	0x00000056 ; bytes:2
gbl_FCV_AWAY_FOUL                EQU	0x0000007A ; bytes:1
gbl_FCV_DAT3                     EQU	0x00000064 ; bit:5
gbl_FCV_STRING_MINUTES           EQU	0x00000058 ; bytes:2
gbl_FCLV_LOOP4                   EQU	0x0000007B ; bytes:1
FCI_RIGHTS_00048_arg_sSrc        EQU	0x0000007C ; bytes:2
FCI_RIGHTS_00048_arg_iSrc_len    EQU	0x0000007E ; bytes:1
FCI_RIGHTS_00048_arg_iCount      EQU	0x000000A0 ; bytes:1
FCI_RIGHTS_00048_arg_sDst        EQU	0x000000A1 ; bytes:2
FCI_RIGHTS_00048_arg_iDst_len    EQU	0x000000A3 ; bytes:1
CompTempVarRet2006               EQU	0x000000A6 ; bytes:1
FCI_RIGHTS_00048_1_idx           EQU	0x000000A4 ; bytes:1
FCI_RIGHTS_00048_1_delta         EQU	0x000000A5 ; bytes:1
CompTempVar2008                  EQU	0x000000A7 ; bytes:1
FCI_STRING_0004F_arg_String      EQU	0x0000007C ; bytes:2
FCI_STRING_0004F_arg_MSZ_String  EQU	0x0000007E ; bytes:1
CompTempVarRet2056               EQU	0x000000A7 ; bytes:4
FCI_STRING_0004F_1_bNegative     EQU	0x000000A0 ; bytes:1
FCI_STRING_0004F_1_idx           EQU	0x000000A1 ; bytes:1
FCI_STRING_0004F_1_RetVal        EQU	0x000000A2 ; bytes:4
CompTempVar2058                  EQU	0x000000A6 ; bytes:1
CompTempVar2066                  EQU	0x000000AF ; bytes:1
CompTempVar2067                  EQU	0x000000B0 ; bytes:1
CompTempVar2068                  EQU	0x000000B1 ; bytes:1
CompTempVar2069                  EQU	0x000000B2 ; bytes:1
CompTempVar2072                  EQU	0x000000A7 ; bytes:1
CompTempVar2073                  EQU	0x000000A8 ; bytes:1
CompTempVar2074                  EQU	0x000000A9 ; bytes:1
CompTempVar2075                  EQU	0x000000AA ; bytes:1
CompTempVar2076                  EQU	0x000000A7 ; bytes:1
CompTempVar2077                  EQU	0x000000A8 ; bytes:1
CompTempVar2078                  EQU	0x000000A9 ; bytes:1
CompTempVar2079                  EQU	0x000000AA ; bytes:1
CompTempVar2188                  EQU	0x0000007C ; bytes:1
CompTempVar2210                  EQU	0x0000007C ; bytes:1
CompTempVar2211                  EQU	0x0000007D ; bytes:1
CompTempVar2212                  EQU	0x0000007C ; bytes:1
CompTempVar2213                  EQU	0x0000007D ; bytes:1
CompTempVar2214                  EQU	0x0000007C ; bytes:1
CompTempVar2215                  EQU	0x0000007D ; bytes:1
CompTempVar2216                  EQU	0x0000007C ; bytes:1
CompTempVar2217                  EQU	0x0000007C ; bytes:1
CompTempVar2218                  EQU	0x0000007C ; bytes:1
CompTempVar2219                  EQU	0x0000007C ; bytes:1
CompTempVar2223                  EQU	0x0000007C ; bytes:1
CompTempVar2224                  EQU	0x0000007C ; bytes:1
FC_CAL_UAR_0005D_arg_nTimeout    EQU	0x000000A7 ; bytes:1
CompTempVarRet2225               EQU	0x000000AE ; bytes:2
FC_CAL_UAR_0005D_1_retVal        EQU	0x000000A8 ; bytes:1
FC_CAL_UAR_0005D_1_delay1        EQU	0x000000A9 ; bytes:1
FC_CAL_UAR_0005D_1_regcheck      EQU	0x000000AA ; bytes:1
FC_CAL_UAR_0005D_1_bWaitForever  EQU	0x000000AB ; bytes:1
FC_CAL_UAR_0005D_1_rxStatus      EQU	0x000000AC ; bytes:1
FC_CAL_UAR_0005D_1_dummy         EQU	0x000000AD ; bytes:1
FCD_RS2320_00062_arg_nTimeout    EQU	0x0000007C ; bytes:1
CompTempVarRet2230               EQU	0x000000A0 ; bytes:2
FCD_RS2320_00063_arg_FCR_RETVAL  EQU	0x0000007C ; bytes:2
FCD_RS2320_00063_arg_FCR_R_00064 EQU	0x0000007E ; bytes:1
FCD_RS2320_00063_arg_nTimeout    EQU	0x000000A0 ; bytes:1
FCD_RS2320_00063_arg_NumBytes    EQU	0x000000A1 ; bytes:1
FCD_RS2320_00063_1_idx           EQU	0x000000A2 ; bytes:1
FCD_RS2320_00063_1_RS232_TO      EQU	0x000000A3 ; bytes:2
FCD_RS2320_00063_1_in            EQU	0x000000A5 ; bytes:2
CompTempVar2231                  EQU	0x000000A7 ; bytes:1
CompTempVar2233                  EQU	0x000000A7 ; bytes:1
CompTempVar2235                  EQU	0x0000007C ; bytes:1
CompTempVar2236                  EQU	0x0000007C ; bytes:1
CompTempVar2237                  EQU	0x0000007C ; bytes:1
CompTempVar2238                  EQU	0x0000007C ; bytes:1
CompTempVar2256                  EQU	0x0000007C ; bytes:1
CompTempVar2258                  EQU	0x0000007E ; bytes:1
CompTempVar2260                  EQU	0x000000A6 ; bytes:1
delay_us_00000_arg_del           EQU	0x000000AE ; bytes:1
delay_ms_00000_arg_del           EQU	0x0000007C ; bytes:1
Int1Context                      EQU	0x0000007F ; bytes:1
Int1BContext                     EQU	0x0000004F ; bytes:3
	ORG 0x00000000
	GOTO	_startup
	ORG 0x00000004
	MOVWF Int1Context
	SWAPF STATUS, W
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF Int1BContext
	SWAPF PCLATH, W
	MOVWF Int1BContext+D'1'
	SWAPF FSR, W
	MOVWF Int1BContext+D'2'
	BCF PCLATH,3
	BCF PCLATH,4
	GOTO	interrupt
	ORG 0x00000010
delay_us_00000
; { delay_us ; function begin
label1
	NOP
	NOP
	DECFSZ delay_us_00000_arg_del, F
	GOTO	label1
	RETURN
; } delay_us function end

	ORG 0x00000015
delay_ms_00000
; { delay_ms ; function begin
	MOVF delay_ms_00000_arg_del, F
	BTFSS STATUS,Z
	GOTO	label2
	RETURN
label2
	MOVLW 0xF9
label3
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	ADDLW 0xFF
	BTFSS STATUS,Z
	GOTO	label3
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	DECFSZ delay_ms_00000_arg_del, F
	GOTO	label2
	RETURN
; } delay_ms function end

	ORG 0x00000041
__mul_32u__0000F
; { __mul_32u_32u ; function begin
	CLRF __mul_32u__0000F_1_i
	CLRF CompTempVarRet464
	CLRF CompTempVarRet464+D'1'
	CLRF CompTempVarRet464+D'2'
	CLRF CompTempVarRet464+D'3'
label4
	BTFSC __mul_32u__0000F_1_i,5
	RETURN
	BTFSS __mul_32u__0000F_arg_b,0
	GOTO	label5
	MOVF __mul_32u__0000F_arg_a, W
	ADDWF CompTempVarRet464, F
	MOVF __mul_32u__0000F_arg_a+D'1', W
	BTFSC gbl_status,0
	INCFSZ __mul_32u__0000F_arg_a+D'1', W
	ADDWF CompTempVarRet464+D'1', F
	MOVF __mul_32u__0000F_arg_a+D'2', W
	BTFSC gbl_status,0
	INCFSZ __mul_32u__0000F_arg_a+D'2', W
	ADDWF CompTempVarRet464+D'2', F
	MOVF __mul_32u__0000F_arg_a+D'3', W
	BTFSC gbl_status,0
	INCFSZ __mul_32u__0000F_arg_a+D'3', W
	ADDWF CompTempVarRet464+D'3', F
label5
	BCF gbl_status,0
	RRF __mul_32u__0000F_arg_b+D'3', F
	RRF __mul_32u__0000F_arg_b+D'2', F
	RRF __mul_32u__0000F_arg_b+D'1', F
	RRF __mul_32u__0000F_arg_b, F
	BCF gbl_status,0
	RLF __mul_32u__0000F_arg_a, F
	RLF __mul_32u__0000F_arg_a+D'1', F
	RLF __mul_32u__0000F_arg_a+D'2', F
	RLF __mul_32u__0000F_arg_a+D'3', F
	INCF __mul_32u__0000F_1_i, F
	GOTO	label4
; } __mul_32u_32u function end

	ORG 0x00000064
FC_CAL_UAR_0005D
; { FC_CAL_UART_Receive_1 ; function begin
	MOVLW 0xFF
	MOVWF FC_CAL_UAR_0005D_1_retVal
	CLRF FC_CAL_UAR_0005D_1_delay1
	CLRF FC_CAL_UAR_0005D_1_regcheck
	CLRF FC_CAL_UAR_0005D_1_bWaitForever
	CLRF FC_CAL_UAR_0005D_1_rxStatus
	CLRF FC_CAL_UAR_0005D_1_dummy
	INCF FC_CAL_UAR_0005D_arg_nTimeout, W
	BTFSS STATUS,Z
	GOTO	label6
	MOVLW 0x01
	MOVWF FC_CAL_UAR_0005D_1_bWaitForever
label6
	MOVF FC_CAL_UAR_0005D_1_rxStatus, F
	BTFSS STATUS,Z
	GOTO	label9
	MOVF FC_CAL_UAR_0005D_1_bWaitForever, F
	BTFSS STATUS,Z
	GOTO	label8
	MOVF FC_CAL_UAR_0005D_arg_nTimeout, F
	BTFSS STATUS,Z
	GOTO	label7
	MOVLW 0x01
	MOVWF FC_CAL_UAR_0005D_1_rxStatus
	GOTO	label8
label7
	MOVLW 0x0A
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	INCF FC_CAL_UAR_0005D_1_delay1, W
	MOVWF FC_CAL_UAR_0005D_1_delay1
	MOVF FC_CAL_UAR_0005D_1_delay1, W
	XORLW 0x64
	BTFSS STATUS,Z
	GOTO	label8
	DECF FC_CAL_UAR_0005D_arg_nTimeout, W
	MOVWF FC_CAL_UAR_0005D_arg_nTimeout
	CLRWDT
	CLRF FC_CAL_UAR_0005D_1_delay1
label8
	MOVLW 0x20
	BCF STATUS, RP0
	ANDWF gbl_pir1, W
	BSF STATUS, RP0
	MOVWF FC_CAL_UAR_0005D_1_regcheck
	MOVF FC_CAL_UAR_0005D_1_regcheck, F
	BTFSC STATUS,Z
	GOTO	label6
	MOVLW 0x02
	MOVWF FC_CAL_UAR_0005D_1_rxStatus
	GOTO	label6
label9
	MOVF FC_CAL_UAR_0005D_1_rxStatus, W
	XORLW 0x02
	BTFSS STATUS,Z
	GOTO	label12
	MOVLW 0x04
	BCF STATUS, RP0
	ANDWF gbl_rcsta, W
	BSF STATUS, RP0
	MOVWF FC_CAL_UAR_0005D_1_regcheck
	MOVF FC_CAL_UAR_0005D_1_regcheck, F
	BTFSC STATUS,Z
	GOTO	label10
	BCF STATUS, RP0
	MOVF gbl_rcreg, W
	BSF STATUS, RP0
	MOVWF FC_CAL_UAR_0005D_1_dummy
	GOTO	label12
label10
	MOVLW 0x02
	BCF STATUS, RP0
	ANDWF gbl_rcsta, W
	BSF STATUS, RP0
	MOVWF FC_CAL_UAR_0005D_1_regcheck
	MOVF FC_CAL_UAR_0005D_1_regcheck, F
	BTFSC STATUS,Z
	GOTO	label11
	BCF STATUS, RP0
	BCF gbl_rcsta,4
	BSF gbl_rcsta,4
	GOTO	label12
label11
	CLRF FC_CAL_UAR_0005D_1_retVal
	BCF STATUS, RP0
	MOVF gbl_rcreg, W
	BSF STATUS, RP0
	IORWF FC_CAL_UAR_0005D_1_retVal, W
	MOVWF FC_CAL_UAR_0005D_1_retVal
label12
	BSF STATUS, RP0
	MOVF FC_CAL_UAR_0005D_1_retVal, W
	MOVWF CompTempVarRet2225
	CLRF CompTempVarRet2225+D'1'
	RETURN
; } FC_CAL_UART_Receive_1 function end

	ORG 0x000000BC
FCM_reg_al_00059
; { FCM_reg_all ; function begin
	CLRF gbl_FCLV_LOOP4
label13
	MOVLW 0x08
	SUBWF gbl_FCLV_LOOP4, W
	BTFSC STATUS,C
	RETURN
	MOVLW 0x01
	BCF STATUS, RP0
	BCF STATUS, RP1
	ANDWF gbl_FCV_BITS, W
	MOVWF CompTempVar2210
	CLRF CompTempVar2211
	MOVF CompTempVar2210, F
	BTFSS STATUS,Z
	BSF CompTempVar2211,0
	BCF gbl_FCV_DAT,0
	MOVF CompTempVar2211, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DAT,0
	MOVLW 0x01
	ANDWF gbl_FCV_BITS2, W
	MOVWF CompTempVar2212
	CLRF CompTempVar2213
	MOVF CompTempVar2212, F
	BTFSS STATUS,Z
	BSF CompTempVar2213,0
	BCF gbl_FCV_DAT2,4
	MOVF CompTempVar2213, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DAT2,4
	MOVLW 0x01
	ANDWF gbl_FCV_BITS3, W
	MOVWF CompTempVar2214
	CLRF CompTempVar2215
	MOVF CompTempVar2214, F
	BTFSS STATUS,Z
	BSF CompTempVar2215,0
	BCF gbl_FCV_DAT3,5
	MOVF CompTempVar2215, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DAT3,5
	MOVLW 0xFB
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	BCF STATUS, RP0
	BTFSS gbl_FCV_DAT,0
	GOTO	label14
	MOVLW 0xFB
	ANDWF gbl_portc, W
	MOVWF CompTempVar2216
	MOVLW 0x04
	IORWF CompTempVar2216, W
	MOVWF gbl_portc
	GOTO	label15
label14
	MOVLW 0xFB
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label15
	MOVLW 0xEF
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	BCF STATUS, RP0
	BTFSS gbl_FCV_DAT2,4
	GOTO	label16
	MOVLW 0xEF
	ANDWF gbl_portc, W
	MOVWF CompTempVar2217
	MOVLW 0x10
	IORWF CompTempVar2217, W
	MOVWF gbl_portc
	GOTO	label17
label16
	MOVLW 0xEF
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label17
	MOVLW 0xF7
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	BCF STATUS, RP0
	BTFSS gbl_FCV_DAT3,5
	GOTO	label18
	MOVLW 0xF7
	ANDWF gbl_portc, W
	MOVWF CompTempVar2218
	MOVLW 0x08
	IORWF CompTempVar2218, W
	MOVWF gbl_portc
	GOTO	label19
label18
	MOVLW 0xF7
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label19
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF CompTempVar2219
	MOVLW 0x01
	IORWF CompTempVar2219, W
	MOVWF gbl_portc
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	MOVF gbl_FCV_BITS, F
	BCF STATUS,C
	RRF gbl_FCV_BITS, F
	MOVF gbl_FCV_BITS2, F
	BCF STATUS,C
	RRF gbl_FCV_BITS2, F
	MOVF gbl_FCV_BITS3, F
	BCF STATUS,C
	RRF gbl_FCV_BITS3, F
	INCF gbl_FCLV_LOOP4, F
	GOTO	label13
; } FCM_reg_all function end

	ORG 0x00000135
FCM_off_al_00051
; { FCM_off_all ; function begin
	MOVLW 0xFE
	BSF STATUS, RP0
	BCF STATUS, RP1
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF gbl_portd
	MOVLW 0xFD
	BSF STATUS, RP0
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xFD
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF gbl_portd
	RETURN
; } FCM_off_all function end

	ORG 0x00000147
FCM_latch_00000
; { FCM_latch ; function begin
	MOVLW 0xFD
	BSF STATUS, RP0
	BCF STATUS, RP1
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFD
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF CompTempVar2188
	MOVLW 0x02
	IORWF CompTempVar2188, W
	MOVWF gbl_portc
	MOVLW 0xFD
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFD
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	RETURN
; } FCM_latch function end

	ORG 0x0000015C
FCM_data_b_00052
; { FCM_data_bank ; function begin
	MOVF gbl_FCV_DIGIT, W
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label20
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label21
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label22
	XORLW 0x07
	BTFSC STATUS,Z
	GOTO	label23
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label24
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label25
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label26
	XORLW 0x0F
	BTFSC STATUS,Z
	GOTO	label27
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label28
	XORLW 0x09
	BTFSC STATUS,Z
	GOTO	label29
	GOTO	label30
label20
	MOVLW 0x06
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS
	GOTO	label30
label21
	MOVLW 0x5B
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS
	GOTO	label30
label22
	MOVLW 0x4F
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS
	GOTO	label30
label23
	MOVLW 0x66
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS
	GOTO	label30
label24
	MOVLW 0x6D
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS
	GOTO	label30
label25
	MOVLW 0x7D
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS
	GOTO	label30
label26
	MOVLW 0x07
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS
	GOTO	label30
label27
	MOVLW 0x7F
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS
	GOTO	label30
label28
	MOVLW 0x6F
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS
	GOTO	label30
label29
	MOVLW 0x3F
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS
label30
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVF gbl_FCV_DIGITB, W
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label31
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label32
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label33
	XORLW 0x07
	BTFSC STATUS,Z
	GOTO	label34
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label35
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label36
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label37
	XORLW 0x0F
	BTFSC STATUS,Z
	GOTO	label38
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label39
	XORLW 0x09
	BTFSC STATUS,Z
	GOTO	label40
	GOTO	label41
label31
	MOVLW 0x06
	MOVWF gbl_FCV_BITS2
	GOTO	label41
label32
	MOVLW 0x5B
	MOVWF gbl_FCV_BITS2
	GOTO	label41
label33
	MOVLW 0x4F
	MOVWF gbl_FCV_BITS2
	GOTO	label41
label34
	MOVLW 0x66
	MOVWF gbl_FCV_BITS2
	GOTO	label41
label35
	MOVLW 0x6D
	MOVWF gbl_FCV_BITS2
	GOTO	label41
label36
	MOVLW 0x7D
	MOVWF gbl_FCV_BITS2
	GOTO	label41
label37
	MOVLW 0x07
	MOVWF gbl_FCV_BITS2
	GOTO	label41
label38
	MOVLW 0x7F
	MOVWF gbl_FCV_BITS2
	GOTO	label41
label39
	MOVLW 0x6F
	MOVWF gbl_FCV_BITS2
	GOTO	label41
label40
	MOVLW 0x3F
	MOVWF gbl_FCV_BITS2
label41
	MOVF gbl_FCV_DIGITC, W
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label42
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label43
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label44
	XORLW 0x07
	BTFSC STATUS,Z
	GOTO	label45
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label46
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label47
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label48
	XORLW 0x0F
	BTFSC STATUS,Z
	GOTO	label49
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label50
	XORLW 0x09
	BTFSC STATUS,Z
	GOTO	label51
	RETURN
label42
	MOVLW 0x06
	MOVWF gbl_FCV_BITS3
	RETURN
label43
	MOVLW 0x5B
	MOVWF gbl_FCV_BITS3
	RETURN
label44
	MOVLW 0x4F
	MOVWF gbl_FCV_BITS3
	RETURN
label45
	MOVLW 0x66
	MOVWF gbl_FCV_BITS3
	RETURN
label46
	MOVLW 0x6D
	MOVWF gbl_FCV_BITS3
	RETURN
label47
	MOVLW 0x7D
	MOVWF gbl_FCV_BITS3
	RETURN
label48
	MOVLW 0x07
	MOVWF gbl_FCV_BITS3
	RETURN
label49
	MOVLW 0x7F
	MOVWF gbl_FCV_BITS3
	RETURN
label50
	MOVLW 0x6F
	MOVWF gbl_FCV_BITS3
	RETURN
label51
	MOVLW 0x3F
	MOVWF gbl_FCV_BITS3
	RETURN
; } FCM_data_bank function end

	ORG 0x0000022A
__rem_8_8_00000
; { __rem_8_8 ; function begin
	BSF STATUS, RP0
	BCF STATUS, RP1
	CLRF CompTempVarRet220
	CLRF __rem_8_8_00000_1_c
	CLRF __rem_8_8_00000_1_i
label52
	BTFSC __rem_8_8_00000_1_i,3
	RETURN
	BCF STATUS,C
	RLF __rem_8_8_00000_1_c, F
	RLF __rem_8_8_00000_arg_a, F
	RLF CompTempVarRet220, F
	MOVF __rem_8_8_00000_arg_b, W
	SUBWF CompTempVarRet220, W
	BTFSS STATUS,C
	GOTO	label53
	MOVWF CompTempVarRet220
	BSF __rem_8_8_00000_1_c,0
label53
	INCF __rem_8_8_00000_1_i, F
	GOTO	label52
; } __rem_8_8 function end

	ORG 0x0000023D
__rem_16_1_00004
; { __rem_16_16 ; function begin
	CLRF CompTempVarRet216
	CLRF CompTempVarRet216+D'1'
	CLRF __rem_16_1_00004_1_c
	CLRF __rem_16_1_00004_1_c+D'1'
	CLRF __rem_16_1_00004_1_i
label54
	BTFSC __rem_16_1_00004_1_i,4
	RETURN
	BCF STATUS,C
	RLF __rem_16_1_00004_1_c, F
	RLF __rem_16_1_00004_1_c+D'1', F
	RLF __rem_16_1_00004_arg_a, F
	RLF __rem_16_1_00004_arg_a+D'1', F
	RLF CompTempVarRet216, F
	RLF CompTempVarRet216+D'1', F
	MOVF __rem_16_1_00004_arg_b+D'1', W
	SUBWF CompTempVarRet216+D'1', W
	BTFSS STATUS,Z
	GOTO	label55
	MOVF __rem_16_1_00004_arg_b, W
	SUBWF CompTempVarRet216, W
label55
	BTFSS STATUS,C
	GOTO	label56
	MOVF __rem_16_1_00004_arg_b, W
	SUBWF CompTempVarRet216, F
	MOVF __rem_16_1_00004_arg_b+D'1', W
	BTFSS STATUS,C
	DECF CompTempVarRet216+D'1', F
	SUBWF CompTempVarRet216+D'1', F
	BSF __rem_16_1_00004_1_c,0
label56
	INCF __rem_16_1_00004_1_i, F
	GOTO	label54
; } __rem_16_16 function end

	ORG 0x0000025C
__div_8_8_00000
; { __div_8_8 ; function begin
	CLRF __div_8_8_00000_1_r
	BSF STATUS, RP0
	BCF STATUS, RP1
	CLRF CompTempVarRet218
	CLRF __div_8_8_00000_1_i
label57
	BTFSC __div_8_8_00000_1_i,3
	RETURN
	BCF STATUS,C
	RLF CompTempVarRet218, F
	RLF __div_8_8_00000_arg_a, F
	RLF __div_8_8_00000_1_r, F
	MOVF __div_8_8_00000_arg_b, W
	SUBWF __div_8_8_00000_1_r, W
	BTFSS STATUS,C
	GOTO	label58
	MOVWF __div_8_8_00000_1_r
	BSF CompTempVarRet218,0
label58
	INCF __div_8_8_00000_1_i, F
	GOTO	label57
; } __div_8_8 function end

	ORG 0x0000026F
__div_16_1_00003
; { __div_16_16 ; function begin
	CLRF __div_16_1_00003_1_r
	CLRF __div_16_1_00003_1_r+D'1'
	CLRF CompTempVarRet214
	CLRF CompTempVarRet214+D'1'
	CLRF __div_16_1_00003_1_i
label59
	BTFSC __div_16_1_00003_1_i,4
	RETURN
	BCF STATUS,C
	RLF CompTempVarRet214, F
	RLF CompTempVarRet214+D'1', F
	RLF __div_16_1_00003_arg_a, F
	RLF __div_16_1_00003_arg_a+D'1', F
	RLF __div_16_1_00003_1_r, F
	RLF __div_16_1_00003_1_r+D'1', F
	MOVF __div_16_1_00003_arg_b+D'1', W
	SUBWF __div_16_1_00003_1_r+D'1', W
	BTFSS STATUS,Z
	GOTO	label60
	MOVF __div_16_1_00003_arg_b, W
	SUBWF __div_16_1_00003_1_r, W
label60
	BTFSS STATUS,C
	GOTO	label61
	MOVF __div_16_1_00003_arg_b, W
	SUBWF __div_16_1_00003_1_r, F
	MOVF __div_16_1_00003_arg_b+D'1', W
	BTFSS STATUS,C
	DECF __div_16_1_00003_1_r+D'1', F
	SUBWF __div_16_1_00003_1_r+D'1', F
	BSF CompTempVarRet214,0
label61
	INCF __div_16_1_00003_1_i, F
	GOTO	label59
; } __div_16_16 function end

	ORG 0x0000028E
FC_CAL_UAR_0005B
; { FC_CAL_UART_Init_1 ; function begin
	BSF STATUS, RP0
	BCF STATUS, RP1
	BSF gbl_txsta,2
	MOVLW 0x1F
	MOVWF gbl_spbrg
	BCF STATUS, RP0
	CLRF gbl_rcsta
	BSF gbl_rcsta,7
	BSF STATUS, RP0
	BSF gbl_txsta,5
	BCF STATUS, RP0
	BSF gbl_rcsta,4
	BSF STATUS, RP0
	BCF gbl_pie1,5
	RETURN
; } FC_CAL_UART_Init_1 function end

	ORG 0x0000029D
FCM_displa_0005A
; { FCM_display_all ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	BTFSS gbl_FCV_FLAG,2
	GOTO	label62
	BCF gbl_FCV_FLAG,2
	CALL FCM_off_al_00051
	MOVF gbl_FCV_MINUTE_ONES, W
	MOVWF gbl_FCV_DIGIT
	MOVF gbl_FCV_AWAY_FOUL, W
	MOVWF gbl_FCV_DIGITB
	MOVF gbl_FCV_AWAY_ONES, W
	MOVWF gbl_FCV_DIGITC
	CALL FCM_data_b_00052
	CALL FCM_reg_al_00059
	MOVF gbl_FCV_SECONDS_ONES, W
	MOVWF gbl_FCV_DIGIT
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVF gbl_FCV_PERIOD, W
	MOVWF gbl_FCV_DIGITB
	MOVF gbl_FCV_HOME_ONES, W
	MOVWF gbl_FCV_DIGITC
	CALL FCM_data_b_00052
	CALL FCM_reg_al_00059
	CALL FCM_latch_00000
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF gbl_portd
	MOVLW 0xFD
	BSF STATUS, RP0
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xFD
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF CompTempVar2223
	MOVLW 0x02
	IORWF CompTempVar2223, W
	MOVWF gbl_portd
	MOVLW 0x01
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	RETURN
label62
	BSF gbl_FCV_FLAG,2
	CALL FCM_off_al_00051
	MOVF gbl_FCV_MINUTE_TENS, W
	MOVWF gbl_FCV_DIGIT
	MOVF gbl_FCV_HOME_FOUL, W
	MOVWF gbl_FCV_DIGITB
	MOVF gbl_FCV_AWAY_TENS, W
	MOVWF gbl_FCV_DIGITC
	CALL FCM_data_b_00052
	CALL FCM_reg_al_00059
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVF gbl_FCV_SECONDS_TENS, W
	MOVWF gbl_FCV_DIGIT
	MOVF gbl_FCV_PERIOD, W
	MOVWF gbl_FCV_DIGITB
	MOVF gbl_FCV_HOME_TENS, W
	MOVWF gbl_FCV_DIGITC
	CALL FCM_data_b_00052
	CALL FCM_reg_al_00059
	CALL FCM_latch_00000
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF CompTempVar2224
	MOVLW 0x01
	IORWF CompTempVar2224, W
	MOVWF gbl_portd
	MOVLW 0xFD
	BSF STATUS, RP0
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xFD
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF gbl_portd
	MOVLW 0x01
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	RETURN
; } FCM_display_all function end

	ORG 0x000002F9
FCI_STRING_0004F
; { FCI_STRING_TO_INT ; function begin
	BSF STATUS, RP0
	BCF STATUS, RP1
	CLRF FCI_STRING_0004F_1_bNegative
	CLRF FCI_STRING_0004F_1_idx
	CLRF FCI_STRING_0004F_1_RetVal
	CLRF FCI_STRING_0004F_1_RetVal+D'1'
	CLRF FCI_STRING_0004F_1_RetVal+D'2'
	CLRF FCI_STRING_0004F_1_RetVal+D'3'
	BCF STATUS,IRP
	BTFSC FCI_STRING_0004F_arg_String+D'1',0
	BSF STATUS,IRP
	MOVF FCI_STRING_0004F_arg_String, W
	MOVWF FSR
	CLRF CompTempVar2058
	MOVF CompTempVar2058, W
	ADDWF FSR, F
	MOVF INDF, W
	XORLW 0x2D
	BTFSS STATUS,Z
	GOTO	label63
	MOVLW 0x01
	MOVWF FCI_STRING_0004F_1_bNegative
	MOVWF FCI_STRING_0004F_1_idx
label63
	MOVF FCI_STRING_0004F_arg_MSZ_String, W
	SUBWF FCI_STRING_0004F_1_idx, W
	BTFSC STATUS,C
	GOTO	label64
	BCF STATUS,IRP
	BTFSC FCI_STRING_0004F_arg_String+D'1',0
	BSF STATUS,IRP
	MOVF FCI_STRING_0004F_arg_String, W
	ADDWF FCI_STRING_0004F_1_idx, W
	MOVWF FSR
	MOVLW 0x30
	SUBWF INDF, W
	BTFSS STATUS,C
	GOTO	label64
	BCF STATUS,IRP
	BTFSC FCI_STRING_0004F_arg_String+D'1',0
	BSF STATUS,IRP
	MOVF FCI_STRING_0004F_arg_String, W
	ADDWF FCI_STRING_0004F_1_idx, W
	MOVWF FSR
	MOVF INDF, W
	SUBLW 0x39
	BTFSS STATUS,C
	GOTO	label64
	MOVF FCI_STRING_0004F_1_RetVal, W
	MOVWF __mul_32u__0000F_arg_a
	MOVF FCI_STRING_0004F_1_RetVal+D'1', W
	MOVWF __mul_32u__0000F_arg_a+D'1'
	MOVF FCI_STRING_0004F_1_RetVal+D'2', W
	MOVWF __mul_32u__0000F_arg_a+D'2'
	MOVF FCI_STRING_0004F_1_RetVal+D'3', W
	MOVWF __mul_32u__0000F_arg_a+D'3'
	MOVLW 0x0A
	MOVWF __mul_32u__0000F_arg_b
	CLRF __mul_32u__0000F_arg_b+D'1'
	CLRF __mul_32u__0000F_arg_b+D'2'
	CLRF __mul_32u__0000F_arg_b+D'3'
	CALL __mul_32u__0000F
	MOVF CompTempVarRet464, W
	MOVWF CompTempVar2066
	MOVF CompTempVarRet464+D'1', W
	MOVWF CompTempVar2067
	MOVF CompTempVarRet464+D'2', W
	MOVWF CompTempVar2068
	MOVF CompTempVarRet464+D'3', W
	MOVWF CompTempVar2069
	MOVF CompTempVar2066, W
	MOVWF FCI_STRING_0004F_1_RetVal
	MOVF CompTempVar2067, W
	MOVWF FCI_STRING_0004F_1_RetVal+D'1'
	MOVF CompTempVar2068, W
	MOVWF FCI_STRING_0004F_1_RetVal+D'2'
	MOVF CompTempVar2069, W
	MOVWF FCI_STRING_0004F_1_RetVal+D'3'
	BCF STATUS,IRP
	BTFSC FCI_STRING_0004F_arg_String+D'1',0
	BSF STATUS,IRP
	MOVF FCI_STRING_0004F_arg_String, W
	ADDWF FCI_STRING_0004F_1_idx, W
	MOVWF FSR
	MOVLW 0x30
	SUBWF INDF, W
	MOVWF CompTempVar2072
	CLRF CompTempVar2073
	CLRF CompTempVar2074
	CLRF CompTempVar2075
	MOVF FCI_STRING_0004F_1_RetVal, W
	ADDWF CompTempVar2072, F
	MOVF FCI_STRING_0004F_1_RetVal+D'1', W
	BTFSC STATUS,C
	INCFSZ FCI_STRING_0004F_1_RetVal+D'1', W
	ADDWF CompTempVar2073, F
	MOVF FCI_STRING_0004F_1_RetVal+D'2', W
	BTFSC STATUS,C
	INCFSZ FCI_STRING_0004F_1_RetVal+D'2', W
	ADDWF CompTempVar2074, F
	MOVF FCI_STRING_0004F_1_RetVal+D'3', W
	BTFSC STATUS,C
	INCFSZ FCI_STRING_0004F_1_RetVal+D'3', W
	ADDWF CompTempVar2075, F
	MOVF CompTempVar2072, W
	MOVWF FCI_STRING_0004F_1_RetVal
	MOVF CompTempVar2073, W
	MOVWF FCI_STRING_0004F_1_RetVal+D'1'
	MOVF CompTempVar2074, W
	MOVWF FCI_STRING_0004F_1_RetVal+D'2'
	MOVF CompTempVar2075, W
	MOVWF FCI_STRING_0004F_1_RetVal+D'3'
	INCF FCI_STRING_0004F_1_idx, W
	MOVWF FCI_STRING_0004F_1_idx
	GOTO	label63
label64
	MOVF FCI_STRING_0004F_1_bNegative, F
	BTFSC STATUS,Z
	GOTO	label65
	MOVF FCI_STRING_0004F_1_RetVal, W
	SUBLW 0x00
	MOVWF CompTempVar2076
	MOVLW 0x00
	MOVWF CompTempVar2077
	MOVWF CompTempVar2078
	MOVWF CompTempVar2079
	MOVF FCI_STRING_0004F_1_RetVal+D'1', W
	BTFSS STATUS,C
	INCFSZ FCI_STRING_0004F_1_RetVal+D'1', W
	SUBWF CompTempVar2077, F
	MOVF FCI_STRING_0004F_1_RetVal+D'2', W
	BTFSS STATUS,C
	INCFSZ FCI_STRING_0004F_1_RetVal+D'2', W
	SUBWF CompTempVar2078, F
	MOVF FCI_STRING_0004F_1_RetVal+D'3', W
	BTFSS STATUS,C
	INCFSZ FCI_STRING_0004F_1_RetVal+D'3', W
	SUBWF CompTempVar2079, F
	MOVF CompTempVar2076, W
	MOVWF FCI_STRING_0004F_1_RetVal
	MOVF CompTempVar2077, W
	MOVWF FCI_STRING_0004F_1_RetVal+D'1'
	MOVF CompTempVar2078, W
	MOVWF FCI_STRING_0004F_1_RetVal+D'2'
	MOVF CompTempVar2079, W
	MOVWF FCI_STRING_0004F_1_RetVal+D'3'
label65
	MOVF FCI_STRING_0004F_1_RetVal, W
	MOVWF CompTempVarRet2056
	MOVF FCI_STRING_0004F_1_RetVal+D'1', W
	MOVWF CompTempVarRet2056+D'1'
	MOVF FCI_STRING_0004F_1_RetVal+D'2', W
	MOVWF CompTempVarRet2056+D'2'
	MOVF FCI_STRING_0004F_1_RetVal+D'3', W
	MOVWF CompTempVarRet2056+D'3'
	RETURN
; } FCI_STRING_TO_INT function end

	ORG 0x00000392
FCI_RIGHTS_00048
; { FCI_RIGHTSTRING ; function begin
	MOVF FCI_RIGHTS_00048_arg_iDst_len, F
	BTFSS STATUS,Z
	GOTO	label66
	CLRF CompTempVarRet2006
	RETURN
label66
	CLRF FCI_RIGHTS_00048_1_idx
label67
	MOVF FCI_RIGHTS_00048_arg_iSrc_len, W
	SUBWF FCI_RIGHTS_00048_1_idx, W
	BTFSC STATUS,C
	GOTO	label68
	BCF STATUS,IRP
	BTFSC FCI_RIGHTS_00048_arg_sSrc+D'1',0
	BSF STATUS,IRP
	MOVF FCI_RIGHTS_00048_arg_sSrc, W
	ADDWF FCI_RIGHTS_00048_1_idx, W
	MOVWF FSR
	MOVF INDF, F
	BTFSC STATUS,Z
	GOTO	label68
	INCF FCI_RIGHTS_00048_1_idx, F
	GOTO	label67
label68
	MOVF FCI_RIGHTS_00048_arg_iCount, W
	SUBWF FCI_RIGHTS_00048_1_idx, W
	BTFSC STATUS,C
	GOTO	label69
	MOVF FCI_RIGHTS_00048_1_idx, W
	MOVWF FCI_RIGHTS_00048_arg_iCount
label69
	MOVF FCI_RIGHTS_00048_arg_iCount, W
	SUBWF FCI_RIGHTS_00048_1_idx, W
	MOVWF FCI_RIGHTS_00048_1_delta
	MOVF FCI_RIGHTS_00048_arg_iCount, W
	SUBWF FCI_RIGHTS_00048_arg_iDst_len, W
	BTFSC STATUS,C
	GOTO	label70
	MOVF FCI_RIGHTS_00048_arg_iDst_len, W
	MOVWF FCI_RIGHTS_00048_arg_iCount
label70
	MOVF FCI_RIGHTS_00048_1_delta, W
	ADDWF FCI_RIGHTS_00048_arg_sSrc, F
	BTFSC STATUS,C
	INCF FCI_RIGHTS_00048_arg_sSrc+D'1', F
	CLRF FCI_RIGHTS_00048_1_idx
label71
	MOVF FCI_RIGHTS_00048_arg_iCount, W
	SUBWF FCI_RIGHTS_00048_1_idx, W
	BTFSC STATUS,C
	GOTO	label72
	BCF STATUS,IRP
	BTFSC FCI_RIGHTS_00048_arg_sSrc+D'1',0
	BSF STATUS,IRP
	MOVF FCI_RIGHTS_00048_arg_sSrc, W
	MOVWF FSR
	MOVF INDF, W
	MOVWF CompTempVar2008
	BCF STATUS,IRP
	BTFSC FCI_RIGHTS_00048_arg_sDst+D'1',0
	BSF STATUS,IRP
	MOVF FCI_RIGHTS_00048_arg_sDst, W
	MOVWF FSR
	MOVF CompTempVar2008, W
	MOVWF INDF
	INCF FCI_RIGHTS_00048_arg_sDst, F
	BTFSC STATUS,Z
	INCF FCI_RIGHTS_00048_arg_sDst+D'1', F
	INCF FCI_RIGHTS_00048_arg_sSrc, F
	BTFSC STATUS,Z
	INCF FCI_RIGHTS_00048_arg_sSrc+D'1', F
	INCF FCI_RIGHTS_00048_1_idx, F
	GOTO	label71
label72
	MOVF FCI_RIGHTS_00048_arg_iDst_len, W
	SUBWF FCI_RIGHTS_00048_1_idx, W
	BTFSC STATUS,C
	GOTO	label73
	BCF STATUS,IRP
	BTFSC FCI_RIGHTS_00048_arg_sDst+D'1',0
	BSF STATUS,IRP
	MOVF FCI_RIGHTS_00048_arg_sDst, W
	MOVWF FSR
	MOVLW 0x00
	MOVWF INDF
label73
	MOVF FCI_RIGHTS_00048_1_idx, W
	MOVWF CompTempVarRet2006
	RETURN
; } FCI_RIGHTSTRING function end

	ORG 0x000003E3
FCD_RS2320_00063
; { FCD_RS2320_ReceiveRS232String ; function begin
	MOVLW 0xFF
	MOVWF FCD_RS2320_00063_1_RS232_TO
	CLRF FCD_RS2320_00063_1_RS232_TO+D'1'
	MOVF FCD_RS2320_00063_arg_NumBytes, W
	SUBWF FCD_RS2320_00063_arg_FCR_R_00064, W
	BTFSC STATUS,C
	GOTO	label74
	MOVF FCD_RS2320_00063_arg_FCR_R_00064, W
	MOVWF FCD_RS2320_00063_arg_NumBytes
label74
	CLRF FCD_RS2320_00063_1_idx
label75
	MOVF FCD_RS2320_00063_arg_NumBytes, W
	SUBWF FCD_RS2320_00063_1_idx, W
	BTFSC STATUS,C
	GOTO	label77
	MOVF FCD_RS2320_00063_arg_nTimeout, W
	MOVWF FC_CAL_UAR_0005D_arg_nTimeout
	CALL FC_CAL_UAR_0005D
	MOVF CompTempVarRet2225, W
	MOVWF FCD_RS2320_00063_1_in
	MOVF CompTempVarRet2225+D'1', W
	MOVWF FCD_RS2320_00063_1_in+D'1'
	MOVF FCD_RS2320_00063_1_in+D'1', W
	XORLW 0x80
	MOVWF CompTempVar2231
	MOVF FCD_RS2320_00063_1_RS232_TO+D'1', W
	XORLW 0x80
	SUBWF CompTempVar2231, W
	BTFSS STATUS,Z
	GOTO	label76
	MOVF FCD_RS2320_00063_1_RS232_TO, W
	SUBWF FCD_RS2320_00063_1_in, W
label76
	BTFSC STATUS,C
	GOTO	label77
	MOVF FCD_RS2320_00063_1_in, W
	MOVWF CompTempVar2233
	BCF STATUS,IRP
	BTFSC FCD_RS2320_00063_arg_FCR_RETVAL+D'1',0
	BSF STATUS,IRP
	MOVF FCD_RS2320_00063_arg_FCR_RETVAL, W
	ADDWF FCD_RS2320_00063_1_idx, W
	MOVWF FSR
	MOVF CompTempVar2233, W
	MOVWF INDF
	INCF FCD_RS2320_00063_1_idx, F
	GOTO	label75
label77
	MOVF FCD_RS2320_00063_arg_FCR_R_00064, W
	SUBWF FCD_RS2320_00063_1_idx, W
	BTFSC STATUS,C
	RETURN
	BCF STATUS,IRP
	BTFSC FCD_RS2320_00063_arg_FCR_RETVAL+D'1',0
	BSF STATUS,IRP
	MOVF FCD_RS2320_00063_arg_FCR_RETVAL, W
	ADDWF FCD_RS2320_00063_1_idx, W
	MOVWF FSR
	MOVLW 0x00
	MOVWF INDF
	RETURN
; } FCD_RS2320_ReceiveRS232String function end

	ORG 0x0000041D
FCD_RS2320_00062
; { FCD_RS2320_ReceiveRS232Char ; function begin
	MOVF FCD_RS2320_00062_arg_nTimeout, W
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF FC_CAL_UAR_0005D_arg_nTimeout
	CALL FC_CAL_UAR_0005D
	MOVF CompTempVarRet2225, W
	MOVWF CompTempVarRet2230
	MOVF CompTempVarRet2225+D'1', W
	MOVWF CompTempVarRet2230+D'1'
	RETURN
; } FCD_RS2320_ReceiveRS232Char function end

	ORG 0x00000427
main
; { main ; function begin
	BSF STATUS, RP0
	BSF STATUS, RP1
	CLRF gbl_ansel
	CLRF gbl_anselh
	CALL FC_CAL_UAR_0005B
	MOVLW 0xC0
	MOVWF gbl_option_reg
	MOVLW 0xFB
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xFB
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF gbl_portd
	MOVLW 0xF7
	BSF STATUS, RP0
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xF7
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF gbl_portd
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	MOVLW 0xFD
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFD
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF gbl_portd
	MOVLW 0xFD
	BSF STATUS, RP0
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xFD
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF CompTempVar2235
	MOVLW 0x02
	IORWF CompTempVar2235, W
	MOVWF gbl_portd
	MOVLW 0xDF
	BSF STATUS, RP0
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xDF
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF gbl_portd
	MOVLW 0xEF
	BSF STATUS, RP0
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xEF
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF CompTempVar2236
	MOVLW 0x10
	IORWF CompTempVar2236, W
	MOVWF gbl_portd
	MOVLW 0xFB
	BSF STATUS, RP0
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xFB
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF CompTempVar2237
	MOVLW 0x04
	IORWF CompTempVar2237, W
	MOVWF gbl_portd
	MOVLW 0xF7
	BSF STATUS, RP0
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xF7
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF CompTempVar2238
	MOVLW 0x08
	IORWF CompTempVar2238, W
	MOVWF gbl_portd
label78
	CALL FCM_displa_0005A
	MOVLW 0x01
	MOVWF FCD_RS2320_00062_arg_nTimeout
	CALL FCD_RS2320_00062
	MOVF CompTempVarRet2230, W
	MOVWF gbl_FCV_HEADER
	MOVF gbl_FCV_HEADER, W
	XORLW 0x3A
	BTFSS STATUS,Z
	GOTO	label78
	MOVLW HIGH(gbl_FCV_RECV+D'0')
	MOVWF FCD_RS2320_00063_arg_FCR_RETVAL+D'1'
	MOVLW LOW(gbl_FCV_RECV+D'0')
	MOVWF FCD_RS2320_00063_arg_FCR_RETVAL
	MOVLW 0x12
	MOVWF FCD_RS2320_00063_arg_FCR_R_00064
	MOVLW 0x01
	MOVWF FCD_RS2320_00063_arg_nTimeout
	MOVLW 0x12
	MOVWF FCD_RS2320_00063_arg_NumBytes
	CALL FCD_RS2320_00063
	MOVLW HIGH(gbl_FCV_RECV+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sSrc+D'1'
	MOVLW LOW(gbl_FCV_RECV+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sSrc
	MOVLW 0x12
	MOVWF FCI_RIGHTS_00048_arg_iSrc_len
	MOVLW 0x11
	MOVWF FCI_RIGHTS_00048_arg_iCount
	MOVLW HIGH(gbl_FCV_STRING_MINUTES+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sDst+D'1'
	MOVLW LOW(gbl_FCV_STRING_MINUTES+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sDst
	MOVLW 0x02
	MOVWF FCI_RIGHTS_00048_arg_iDst_len
	CALL FCI_RIGHTS_00048
	MOVLW HIGH(gbl_FCV_RECV+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sSrc+D'1'
	MOVLW LOW(gbl_FCV_RECV+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sSrc
	MOVLW 0x12
	MOVWF FCI_RIGHTS_00048_arg_iSrc_len
	MOVLW 0x0E
	MOVWF FCI_RIGHTS_00048_arg_iCount
	MOVLW HIGH(gbl_FCV_STRING_SECONDS+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sDst+D'1'
	MOVLW LOW(gbl_FCV_STRING_SECONDS+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sDst
	MOVLW 0x02
	MOVWF FCI_RIGHTS_00048_arg_iDst_len
	CALL FCI_RIGHTS_00048
	MOVLW HIGH(gbl_FCV_RECV+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sSrc+D'1'
	MOVLW LOW(gbl_FCV_RECV+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sSrc
	MOVLW 0x12
	MOVWF FCI_RIGHTS_00048_arg_iSrc_len
	MOVLW 0x0B
	MOVWF FCI_RIGHTS_00048_arg_iCount
	MOVLW HIGH(gbl_FCV_STRING_FOULPERIOD+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sDst+D'1'
	MOVLW LOW(gbl_FCV_STRING_FOULPERIOD+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sDst
	MOVLW 0x03
	MOVWF FCI_RIGHTS_00048_arg_iDst_len
	CALL FCI_RIGHTS_00048
	MOVLW HIGH(gbl_FCV_RECV+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sSrc+D'1'
	MOVLW LOW(gbl_FCV_RECV+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sSrc
	MOVLW 0x12
	MOVWF FCI_RIGHTS_00048_arg_iSrc_len
	MOVLW 0x07
	MOVWF FCI_RIGHTS_00048_arg_iCount
	MOVLW HIGH(gbl_FCV_STRING_SCORE_AWAY+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sDst+D'1'
	MOVLW LOW(gbl_FCV_STRING_SCORE_AWAY+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sDst
	MOVLW 0x03
	MOVWF FCI_RIGHTS_00048_arg_iDst_len
	CALL FCI_RIGHTS_00048
	MOVLW HIGH(gbl_FCV_RECV+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sSrc+D'1'
	MOVLW LOW(gbl_FCV_RECV+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sSrc
	MOVLW 0x12
	MOVWF FCI_RIGHTS_00048_arg_iSrc_len
	MOVLW 0x03
	MOVWF FCI_RIGHTS_00048_arg_iCount
	MOVLW HIGH(gbl_FCV_STRING_SCORE_HOME+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sDst+D'1'
	MOVLW LOW(gbl_FCV_STRING_SCORE_HOME+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sDst
	MOVLW 0x03
	MOVWF FCI_RIGHTS_00048_arg_iDst_len
	CALL FCI_RIGHTS_00048
	MOVLW HIGH(gbl_FCV_STRING_SCORE_AWAY+D'0')
	MOVWF FCI_STRING_0004F_arg_String+D'1'
	MOVLW LOW(gbl_FCV_STRING_SCORE_AWAY+D'0')
	MOVWF FCI_STRING_0004F_arg_String
	MOVLW 0x03
	MOVWF FCI_STRING_0004F_arg_MSZ_String
	CALL FCI_STRING_0004F
	MOVF CompTempVarRet2056, W
	MOVWF gbl_FCV_SCORE_HOME
	MOVLW HIGH(gbl_FCV_STRING_SCORE_HOME+D'0')
	MOVWF FCI_STRING_0004F_arg_String+D'1'
	MOVLW LOW(gbl_FCV_STRING_SCORE_HOME+D'0')
	MOVWF FCI_STRING_0004F_arg_String
	MOVLW 0x03
	MOVWF FCI_STRING_0004F_arg_MSZ_String
	CALL FCI_STRING_0004F
	MOVF CompTempVarRet2056, W
	BCF STATUS, RP0
	MOVWF gbl_FCV_SCORE_AWAY
	MOVLW HIGH(gbl_FCV_STRING_FOULPERIOD+D'0')
	MOVWF FCI_STRING_0004F_arg_String+D'1'
	MOVLW LOW(gbl_FCV_STRING_FOULPERIOD+D'0')
	MOVWF FCI_STRING_0004F_arg_String
	MOVLW 0x03
	MOVWF FCI_STRING_0004F_arg_MSZ_String
	CALL FCI_STRING_0004F
	MOVF CompTempVarRet2056, W
	BCF STATUS, RP0
	MOVWF gbl_FCV_FOULPERIOD
	BSF STATUS, RP0
	MOVF CompTempVarRet2056+D'1', W
	BCF STATUS, RP0
	MOVWF gbl_FCV_FOULPERIOD+D'1'
	MOVLW HIGH(gbl_FCV_STRING_MINUTES+D'0')
	MOVWF FCI_STRING_0004F_arg_String+D'1'
	MOVLW LOW(gbl_FCV_STRING_MINUTES+D'0')
	MOVWF FCI_STRING_0004F_arg_String
	MOVLW 0x02
	MOVWF FCI_STRING_0004F_arg_MSZ_String
	CALL FCI_STRING_0004F
	MOVF CompTempVarRet2056, W
	BCF STATUS, RP0
	MOVWF gbl_FCV_MINUTES
	MOVLW HIGH(gbl_FCV_STRING_SECONDS+D'0')
	MOVWF FCI_STRING_0004F_arg_String+D'1'
	MOVLW LOW(gbl_FCV_STRING_SECONDS+D'0')
	MOVWF FCI_STRING_0004F_arg_String
	MOVLW 0x02
	MOVWF FCI_STRING_0004F_arg_MSZ_String
	CALL FCI_STRING_0004F
	MOVF CompTempVarRet2056, W
	BCF STATUS, RP0
	MOVWF gbl_FCV_SECONDS
	MOVF gbl_FCV_SCORE_AWAY, W
	MOVWF __div_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __div_8_8_00000_arg_b
	CALL __div_8_8_00000
	MOVF CompTempVarRet218, W
	BCF STATUS, RP0
	MOVWF gbl_FCV_AWAY_TENS
	MOVF gbl_FCV_SCORE_AWAY, W
	MOVWF __rem_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __rem_8_8_00000_arg_b
	CALL __rem_8_8_00000
	MOVF CompTempVarRet220, W
	MOVWF gbl_FCV_AWAY_ONES
	MOVF gbl_FCV_SCORE_HOME, W
	MOVWF __div_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __div_8_8_00000_arg_b
	CALL __div_8_8_00000
	MOVF CompTempVarRet218, W
	MOVWF gbl_FCV_HOME_TENS
	MOVF gbl_FCV_SCORE_HOME, W
	MOVWF __rem_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __rem_8_8_00000_arg_b
	CALL __rem_8_8_00000
	MOVF CompTempVarRet220, W
	BCF STATUS, RP0
	MOVWF gbl_FCV_HOME_ONES
	CLRF CompTempVar2256
	MOVF gbl_FCV_FOULPERIOD, W
	BSF STATUS, RP0
	MOVWF __div_16_1_00003_arg_a
	BCF STATUS, RP0
	MOVF gbl_FCV_FOULPERIOD+D'1', W
	BSF STATUS, RP0
	MOVWF __div_16_1_00003_arg_a+D'1'
	BCF STATUS, RP0
	BTFSS gbl_FCV_FOULPERIOD+D'1',7
	GOTO	label79
	BSF STATUS, RP0
	COMF __div_16_1_00003_arg_a, F
	COMF __div_16_1_00003_arg_a+D'1', F
	INCF __div_16_1_00003_arg_a, F
	BTFSC STATUS,Z
	INCF __div_16_1_00003_arg_a+D'1', F
	INCF CompTempVar2256, F
label79
	MOVLW 0x64
	BSF STATUS, RP0
	MOVWF __div_16_1_00003_arg_b
	CLRF __div_16_1_00003_arg_b+D'1'
	CALL __div_16_1_00003
	MOVF CompTempVarRet214, W
	BCF STATUS, RP0
	MOVWF gbl_FCV_HOME_FOUL
	BTFSS CompTempVar2256,0
	GOTO	label80
	COMF gbl_FCV_HOME_FOUL, F
	INCF gbl_FCV_HOME_FOUL, F
label80
	MOVF gbl_FCV_FOULPERIOD, W
	MOVWF __rem_16_1_00004_arg_a
	MOVF gbl_FCV_FOULPERIOD+D'1', W
	MOVWF __rem_16_1_00004_arg_a+D'1'
	BTFSS gbl_FCV_FOULPERIOD+D'1',7
	GOTO	label81
	COMF __rem_16_1_00004_arg_a, F
	COMF __rem_16_1_00004_arg_a+D'1', F
	INCF __rem_16_1_00004_arg_a, F
	BTFSC STATUS,Z
	INCF __rem_16_1_00004_arg_a+D'1', F
label81
	MOVLW 0x64
	BSF STATUS, RP0
	MOVWF __rem_16_1_00004_arg_b
	CLRF __rem_16_1_00004_arg_b+D'1'
	CALL __rem_16_1_00004
	MOVF CompTempVarRet216, W
	MOVWF __div_16_1_00003_arg_a
	MOVF CompTempVarRet216+D'1', W
	MOVWF CompTempVar2258
	BCF STATUS, RP0
	BTFSS gbl_FCV_FOULPERIOD+D'1',7
	GOTO	label82
	BSF STATUS, RP0
	COMF __div_16_1_00003_arg_a, F
	COMF CompTempVar2258, F
	INCF __div_16_1_00003_arg_a, F
	BTFSC STATUS,Z
	INCF CompTempVar2258, F
label82
	BSF STATUS, RP0
	CLRF CompTempVar2260
	MOVF CompTempVar2258, W
	MOVWF __div_16_1_00003_arg_a+D'1'
	BTFSS CompTempVar2258,7
	GOTO	label83
	COMF __div_16_1_00003_arg_a, F
	COMF __div_16_1_00003_arg_a+D'1', F
	INCF __div_16_1_00003_arg_a, F
	BTFSC STATUS,Z
	INCF __div_16_1_00003_arg_a+D'1', F
	INCF CompTempVar2260, F
label83
	MOVLW 0x0A
	MOVWF __div_16_1_00003_arg_b
	CLRF __div_16_1_00003_arg_b+D'1'
	CALL __div_16_1_00003
	MOVF CompTempVarRet214, W
	BCF STATUS, RP0
	MOVWF gbl_FCV_PERIOD
	BSF STATUS, RP0
	BTFSS CompTempVar2260,0
	GOTO	label84
	BCF STATUS, RP0
	COMF gbl_FCV_PERIOD, F
	INCF gbl_FCV_PERIOD, F
label84
	BCF STATUS, RP0
	MOVF gbl_FCV_FOULPERIOD, W
	MOVWF __rem_16_1_00004_arg_a
	MOVF gbl_FCV_FOULPERIOD+D'1', W
	MOVWF __rem_16_1_00004_arg_a+D'1'
	BTFSS gbl_FCV_FOULPERIOD+D'1',7
	GOTO	label85
	COMF __rem_16_1_00004_arg_a, F
	COMF __rem_16_1_00004_arg_a+D'1', F
	INCF __rem_16_1_00004_arg_a, F
	BTFSC STATUS,Z
	INCF __rem_16_1_00004_arg_a+D'1', F
label85
	MOVLW 0x0A
	BSF STATUS, RP0
	MOVWF __rem_16_1_00004_arg_b
	CLRF __rem_16_1_00004_arg_b+D'1'
	CALL __rem_16_1_00004
	MOVF CompTempVarRet216, W
	MOVWF gbl_FCV_AWAY_FOUL
	BCF STATUS, RP0
	BTFSS gbl_FCV_FOULPERIOD+D'1',7
	GOTO	label86
	COMF gbl_FCV_AWAY_FOUL, F
	INCF gbl_FCV_AWAY_FOUL, F
label86
	MOVF gbl_FCV_MINUTES, W
	MOVWF __div_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __div_8_8_00000_arg_b
	CALL __div_8_8_00000
	MOVF CompTempVarRet218, W
	BCF STATUS, RP0
	MOVWF gbl_FCV_MINUTE_TENS
	MOVF gbl_FCV_MINUTES, W
	MOVWF __rem_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __rem_8_8_00000_arg_b
	CALL __rem_8_8_00000
	MOVF CompTempVarRet220, W
	MOVWF gbl_FCV_MINUTE_ONES
	BCF STATUS, RP0
	MOVF gbl_FCV_SECONDS, W
	MOVWF __div_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __div_8_8_00000_arg_b
	CALL __div_8_8_00000
	MOVF CompTempVarRet218, W
	BCF STATUS, RP0
	MOVWF gbl_FCV_SECONDS_TENS
	MOVF gbl_FCV_SECONDS, W
	MOVWF __rem_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __rem_8_8_00000_arg_b
	CALL __rem_8_8_00000
	MOVF CompTempVarRet220, W
	MOVWF gbl_FCV_SECONDS_ONES
	BCF STATUS, RP0
	BCF gbl_FCV_FLAG,2
	CALL FCM_displa_0005A
	CALL FCM_displa_0005A
	GOTO	label78
; } main function end

	ORG 0x000005CC
_startup
	MOVLW 0xD5
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_14_LSR
	MOVLW 0xC4
	MOVWF gbl_14_LSR+D'1'
	MOVLW 0xBB
	MOVWF gbl_14_LSR+D'2'
	MOVLW 0xDC
	MOVWF gbl_14_LSR+D'3'
	CLRF gbl_15_gbl_aSig
	CLRF gbl_15_gbl_aSig+D'1'
	CLRF gbl_15_gbl_aSig+D'2'
	CLRF gbl_15_gbl_aSig+D'3'
	CLRF gbl_15_gbl_bSig
	CLRF gbl_15_gbl_bSig+D'1'
	CLRF gbl_15_gbl_bSig+D'2'
	CLRF gbl_15_gbl_bSig+D'3'
	CLRF gbl_15_gbl_zSig
	CLRF gbl_15_gbl_zSig+D'1'
	CLRF gbl_15_gbl_zSig+D'2'
	CLRF gbl_15_gbl_zSig+D'3'
	CLRF gbl_15_gbl_aExp
	CLRF gbl_15_gbl_bExp
	CLRF gbl_15_gbl_zExp
	CLRF gbl_15_gbl_zExp+D'1'
	CLRF gbl_15_gbl_aSign
	CLRF gbl_15_gbl_bSign
	CLRF gbl_15_gbl_zSign
	CLRF gbl_15_gbl_zSigZero
	CLRF gbl_15_gbl_ret
	CLRF gbl_15_gbl_ret+D'1'
	CLRF gbl_15_gbl_ret+D'2'
	CLRF gbl_15_gbl_ret+D'3'
	CLRF gbl_float_rounding_mode
	CLRF gbl_float_exception_flags
	CLRF gbl_float_detect_tininess
	CLRF gbl_FCV_STRING_SCORE_HOME
	CLRF gbl_FCV_HOME_ONES
	CLRF gbl_FCV_FOULPERIOD
	CLRF gbl_FCV_FOULPERIOD+D'1'
	CLRF gbl_FCV_PERIOD
	CLRF gbl_FCV_MINUTES
	CLRF gbl_FCV_HOME_FOUL
	CLRF gbl_FCV_AWAY_TENS
	CLRF gbl_FCV_MINUTE_TENS
	CLRF gbl_FCV_RECV
	CLRF gbl_FCV_BITS
	CLRF gbl_FCV_STRING_FOULPERIOD
	CLRF gbl_FCV_SECONDS_TENS
	CLRF gbl_FCV_DIGITC
	CLRF gbl_FCV_SCORE_AWAY
	CLRF gbl_FCV_DIGIT
	BCF gbl_FCV_HOME_HUNDRED,1
	CLRF gbl_FCV_BITS2
	CLRF gbl_FCV_AWAY_ONES
	CLRF gbl_FCV_MINUTE_ONES
	CLRF gbl_FCV_BITS3
	CLRF gbl_FCV_HOME_TENS
	BCF gbl_FCV_FLAG,2
	CLRF gbl_FCV_HEADER
	BCF gbl_FCV_AWAY_HUNDREDS,3
	CLRF gbl_FCV_SECONDS_ONES
	CLRF gbl_FCV_STRING_SCORE_AWAY
	CLRF gbl_FCV_IHAP
	BCF gbl_FCV_DAT2,4
	CLRF gbl_FCV_STRING_SECONDS
	CLRF gbl_FCV_AWAY_FOUL
	BCF gbl_FCV_DAT3,5
	CLRF gbl_FCV_STRING_MINUTES
	BCF PCLATH,3
	BCF PCLATH,4
	GOTO	main
	ORG 0x00000615
interrupt
; { interrupt ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	SWAPF Int1BContext+D'2', W
	MOVWF FSR
	SWAPF Int1BContext+D'1', W
	MOVWF PCLATH
	SWAPF Int1BContext, W
	MOVWF STATUS
	SWAPF Int1Context, F
	SWAPF Int1Context, W
	RETFIE
; } interrupt function end

	ORG 0x00002007
	DW 0x20C2
	DW 0x3EFF
	END
