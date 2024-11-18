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
; Heap block 2, size:29 (0x000000D3 - 0x000000EF)
__HEAP_BLOCK2_BANK               EQU	0x00000001
__HEAP_BLOCK2_START_OFFSET       EQU	0x00000053
__HEAP_BLOCK2_END_OFFSET         EQU	0x0000006F
; Heap block 3, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK3_BANK               EQU	0x00000000
__HEAP_BLOCK3_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK3_END_OFFSET         EQU	0x00000000
__div_32_3_00001_arg_a           EQU	0x000000C0 ; bytes:4
__div_32_3_00001_arg_b           EQU	0x000000C4 ; bytes:4
CompTempVarRet210                EQU	0x000000CD ; bytes:4
__div_32_3_00001_1_r             EQU	0x000000C8 ; bytes:4
__div_32_3_00001_1_i             EQU	0x000000CC ; bytes:1
__rem_32_3_00002_arg_a           EQU	0x000000B8 ; bytes:4
__rem_32_3_00002_arg_b           EQU	0x000000BC ; bytes:4
CompTempVarRet212                EQU	0x000000CD ; bytes:4
__rem_32_3_00002_1_c             EQU	0x000000C8 ; bytes:4
__rem_32_3_00002_1_i             EQU	0x000000CC ; bytes:1
__div_8_8_00000_arg_a            EQU	0x000000B8 ; bytes:1
__div_8_8_00000_arg_b            EQU	0x000000B9 ; bytes:1
CompTempVarRet218                EQU	0x000000BC ; bytes:1
__div_8_8_00000_1_r              EQU	0x000000BA ; bytes:1
__div_8_8_00000_1_i              EQU	0x000000BB ; bytes:1
__rem_8_8_00000_arg_a            EQU	0x000000B8 ; bytes:1
__rem_8_8_00000_arg_b            EQU	0x000000B9 ; bytes:1
CompTempVarRet220                EQU	0x000000BC ; bytes:1
__rem_8_8_00000_1_c              EQU	0x000000BA ; bytes:1
__rem_8_8_00000_1_i              EQU	0x000000BB ; bytes:1
gbl_status                       EQU	0x00000003 ; bytes:1
__mul_32u__0000F_arg_a           EQU	0x000000C2 ; bytes:4
__mul_32u__0000F_arg_b           EQU	0x000000C6 ; bytes:4
CompTempVarRet464                EQU	0x000000CF ; bytes:4
__mul_32u__0000F_1_i             EQU	0x000000CE ; bytes:1
gbl_14_LSR                       EQU	0x0000002F ; bytes:4
gbl_float_detect_tininess        EQU	0x0000006F ; bytes:1
gbl_float_rounding_mode          EQU	0x00000070 ; bytes:1
gbl_float_exception_flags        EQU	0x00000071 ; bytes:1
gbl_15_gbl_aSig                  EQU	0x00000033 ; bytes:4
gbl_15_gbl_bSig                  EQU	0x00000037 ; bytes:4
gbl_15_gbl_zSig                  EQU	0x0000003B ; bytes:4
gbl_15_gbl_aExp                  EQU	0x00000072 ; bytes:1
gbl_15_gbl_bExp                  EQU	0x00000073 ; bytes:1
gbl_15_gbl_zExp                  EQU	0x0000006B ; bytes:2
gbl_15_gbl_aSign                 EQU	0x00000074 ; bytes:1
gbl_15_gbl_bSign                 EQU	0x00000075 ; bytes:1
gbl_15_gbl_zSign                 EQU	0x00000076 ; bytes:1
gbl_15_gbl_zSigZero              EQU	0x00000077 ; bytes:1
gbl_15_gbl_ret                   EQU	0x0000003F ; bytes:4
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
gbl_FCV_DIGIT_FOPE               EQU	0x00000078 ; bytes:1
gbl_FCV_DIGIT_TIME               EQU	0x00000079 ; bytes:1
gbl_FCV_STORED_HOME_SCORE        EQU	0x00000043 ; bytes:4
gbl_FCV_STORED_SEC               EQU	0x0000007A ; bytes:1
gbl_FCV_HOME_SCORE_ONES          EQU	0x0000007B ; bytes:1
gbl_FCV_DAT_SCORE                EQU	0x0000007C ; bit:0
gbl_FCV_STORED_MIN               EQU	0x0000007D ; bytes:1
gbl_FCV_PERIOD                   EQU	0x0000007E ; bytes:1
gbl_FCV_BITS_SCORE               EQU	0x000000A0 ; bytes:1
gbl_FCV_AWAY_SCORE_TENS          EQU	0x000000A1 ; bytes:1
gbl_FCV_STORED_HOME_FOUL         EQU	0x000000A2 ; bytes:1
gbl_FCV_HOME_FOUL                EQU	0x000000A3 ; bytes:1
gbl_FCV_MIN_ONES                 EQU	0x000000A4 ; bytes:1
gbl_FCV_STORED_PERIOD            EQU	0x000000A5 ; bytes:1
gbl_FCV_RX                       EQU	0x000000A6 ; bytes:1
gbl_FCV_STRING_AWAY              EQU	0x0000005F ; bytes:3
gbl_FCV_END                      EQU	0x0000006D ; bytes:2
gbl_FCV_AWAY_SCORE               EQU	0x00000047 ; bytes:4
gbl_FCV_DAT_FOPE                 EQU	0x0000007C ; bit:1
gbl_FCV_DAT_TIME                 EQU	0x0000007C ; bit:2
gbl_FCV_DIGIT                    EQU	0x000000A7 ; bytes:1
gbl_FCV_STRING_TIME              EQU	0x0000004B ; bytes:4
gbl_FCV_SEC_TENS                 EQU	0x000000A8 ; bytes:1
gbl_FCV_AWAY_SCORE_ONES          EQU	0x000000A9 ; bytes:1
gbl_FCV_STRING_FOPE              EQU	0x00000062 ; bytes:3
gbl_FCV_STRING_HOME              EQU	0x00000065 ; bytes:3
gbl_FCV_HOME_SCORE               EQU	0x0000004F ; bytes:4
gbl_FCV_DIGIT_SCORE              EQU	0x000000AA ; bytes:1
gbl_FCV_HOME_SCORE_TENS          EQU	0x000000AB ; bytes:1
gbl_FCV_BITS_FOPE                EQU	0x000000AC ; bytes:1
gbl_FCV_BITS_TIME                EQU	0x000000AD ; bytes:1
gbl_FCV_SEC                      EQU	0x000000AE ; bytes:1
gbl_FCV_MIN                      EQU	0x000000AF ; bytes:1
gbl_FCV_STORED_AWAY_SCORE        EQU	0x00000053 ; bytes:4
gbl_FCV_STORED_AWAY_FOUL         EQU	0x000000B0 ; bytes:1
gbl_FCV_FOPE                     EQU	0x00000057 ; bytes:4
gbl_FCV_TIME                     EQU	0x0000005B ; bytes:4
gbl_FCV_AWAY_FOUL                EQU	0x000000B1 ; bytes:1
gbl_FCV_SEC_ONES                 EQU	0x000000B2 ; bytes:1
gbl_FCV_MIN_TENS                 EQU	0x000000B3 ; bytes:1
gbl_FCV_RCV                      EQU	0x00000020 ; bytes:15
gbl_FCLV_LOOP1                   EQU	0x000000B4 ; bytes:1
gbl_FCLV_LOOP2                   EQU	0x000000B5 ; bytes:1
gbl_FCLV_LOOP3                   EQU	0x000000B6 ; bytes:1
gbl_FCLV_LOOP4                   EQU	0x000000B7 ; bytes:1
FCI_RIGHTS_00048_arg_sSrc        EQU	0x000000B8 ; bytes:2
FCI_RIGHTS_00048_arg_iSrc_len    EQU	0x000000BA ; bytes:1
FCI_RIGHTS_00048_arg_iCount      EQU	0x000000BB ; bytes:1
FCI_RIGHTS_00048_arg_sDst        EQU	0x000000BC ; bytes:2
FCI_RIGHTS_00048_arg_iDst_len    EQU	0x000000BE ; bytes:1
CompTempVarRet2006               EQU	0x000000C1 ; bytes:1
FCI_RIGHTS_00048_1_idx           EQU	0x000000BF ; bytes:1
FCI_RIGHTS_00048_1_delta         EQU	0x000000C0 ; bytes:1
CompTempVar2008                  EQU	0x000000C2 ; bytes:1
FCI_STRING_0004F_arg_String      EQU	0x000000B8 ; bytes:2
FCI_STRING_0004F_arg_MSZ_String  EQU	0x000000BA ; bytes:1
CompTempVarRet2063               EQU	0x000000C2 ; bytes:4
FCI_STRING_0004F_1_bNegative     EQU	0x000000BB ; bytes:1
FCI_STRING_0004F_1_idx           EQU	0x000000BC ; bytes:1
FCI_STRING_0004F_1_RetVal        EQU	0x000000BD ; bytes:4
CompTempVar2065                  EQU	0x000000C1 ; bytes:1
CompTempVar2073                  EQU	0x000000CA ; bytes:1
CompTempVar2074                  EQU	0x000000CB ; bytes:1
CompTempVar2075                  EQU	0x000000CC ; bytes:1
CompTempVar2076                  EQU	0x000000CD ; bytes:1
CompTempVar2079                  EQU	0x000000C2 ; bytes:1
CompTempVar2080                  EQU	0x000000C3 ; bytes:1
CompTempVar2081                  EQU	0x000000C4 ; bytes:1
CompTempVar2082                  EQU	0x000000C5 ; bytes:1
CompTempVar2083                  EQU	0x000000C2 ; bytes:1
CompTempVar2084                  EQU	0x000000C3 ; bytes:1
CompTempVar2085                  EQU	0x000000C4 ; bytes:1
CompTempVar2086                  EQU	0x000000C5 ; bytes:1
CompTempVar2195                  EQU	0x000000B8 ; bytes:1
CompTempVar2196                  EQU	0x000000B9 ; bytes:1
CompTempVar2197                  EQU	0x000000B8 ; bytes:1
CompTempVar2198                  EQU	0x000000B9 ; bytes:1
CompTempVar2199                  EQU	0x000000B8 ; bytes:1
CompTempVar2200                  EQU	0x000000B9 ; bytes:1
CompTempVar2201                  EQU	0x000000B8 ; bytes:1
CompTempVar2202                  EQU	0x000000B8 ; bytes:1
CompTempVar2203                  EQU	0x000000B8 ; bytes:1
CompTempVar2204                  EQU	0x000000B8 ; bytes:1
CompTempVar2208                  EQU	0x000000B8 ; bytes:1
CompTempVar2209                  EQU	0x000000B9 ; bytes:1
CompTempVar2210                  EQU	0x000000B8 ; bytes:1
CompTempVar2211                  EQU	0x000000B9 ; bytes:1
CompTempVar2212                  EQU	0x000000B8 ; bytes:1
CompTempVar2213                  EQU	0x000000B9 ; bytes:1
CompTempVar2214                  EQU	0x000000B8 ; bytes:1
CompTempVar2215                  EQU	0x000000B8 ; bytes:1
CompTempVar2216                  EQU	0x000000B8 ; bytes:1
CompTempVar2217                  EQU	0x000000B8 ; bytes:1
CompTempVar2221                  EQU	0x000000B8 ; bytes:1
CompTempVar2222                  EQU	0x000000B9 ; bytes:1
CompTempVar2223                  EQU	0x000000B8 ; bytes:1
CompTempVar2224                  EQU	0x000000B9 ; bytes:1
CompTempVar2225                  EQU	0x000000B8 ; bytes:1
CompTempVar2226                  EQU	0x000000B9 ; bytes:1
CompTempVar2227                  EQU	0x000000B8 ; bytes:1
CompTempVar2228                  EQU	0x000000B8 ; bytes:1
CompTempVar2229                  EQU	0x000000B8 ; bytes:1
CompTempVar2230                  EQU	0x000000B8 ; bytes:1
CompTempVar2234                  EQU	0x000000B8 ; bytes:1
CompTempVar2235                  EQU	0x000000B9 ; bytes:1
CompTempVar2236                  EQU	0x000000B8 ; bytes:1
CompTempVar2237                  EQU	0x000000B9 ; bytes:1
CompTempVar2238                  EQU	0x000000B8 ; bytes:1
CompTempVar2239                  EQU	0x000000B9 ; bytes:1
CompTempVar2240                  EQU	0x000000B8 ; bytes:1
CompTempVar2241                  EQU	0x000000B8 ; bytes:1
CompTempVar2242                  EQU	0x000000B8 ; bytes:1
CompTempVar2243                  EQU	0x000000B8 ; bytes:1
CompTempVar2247                  EQU	0x000000B8 ; bytes:1
FC_CAL_UAR_00056_arg_nTimeout    EQU	0x000000C2 ; bytes:1
CompTempVarRet2293               EQU	0x000000C9 ; bytes:2
FC_CAL_UAR_00056_1_retVal        EQU	0x000000C3 ; bytes:1
FC_CAL_UAR_00056_1_delay1        EQU	0x000000C4 ; bytes:1
FC_CAL_UAR_00056_1_regcheck      EQU	0x000000C5 ; bytes:1
FC_CAL_UAR_00056_1_bWaitForever  EQU	0x000000C6 ; bytes:1
FC_CAL_UAR_00056_1_rxStatus      EQU	0x000000C7 ; bytes:1
FC_CAL_UAR_00056_1_dummy         EQU	0x000000C8 ; bytes:1
FCD_RS2320_0005B_arg_nTimeout    EQU	0x000000B8 ; bytes:1
CompTempVarRet2298               EQU	0x000000BA ; bytes:2
FCD_RS2320_0005C_arg_FCR_RETVAL  EQU	0x000000B8 ; bytes:2
FCD_RS2320_0005C_arg_FCR_R_0005D EQU	0x000000BA ; bytes:1
FCD_RS2320_0005C_arg_nTimeout    EQU	0x000000BB ; bytes:1
FCD_RS2320_0005C_arg_NumBytes    EQU	0x000000BC ; bytes:1
FCD_RS2320_0005C_1_idx           EQU	0x000000BD ; bytes:1
FCD_RS2320_0005C_1_RS232_TO      EQU	0x000000BE ; bytes:2
FCD_RS2320_0005C_1_in            EQU	0x000000C0 ; bytes:2
CompTempVar2299                  EQU	0x000000C2 ; bytes:1
CompTempVar2301                  EQU	0x000000C2 ; bytes:1
CompTempVar2303                  EQU	0x000000B8 ; bytes:1
delay_us_00000_arg_del           EQU	0x000000C9 ; bytes:1
Int1Context                      EQU	0x0000007F ; bytes:1
Int1BContext                     EQU	0x00000068 ; bytes:3
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
	BSF PCLATH,3
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
__mul_32u__0000F
; { __mul_32u_32u ; function begin
	CLRF __mul_32u__0000F_1_i
	CLRF CompTempVarRet464
	CLRF CompTempVarRet464+D'1'
	CLRF CompTempVarRet464+D'2'
	CLRF CompTempVarRet464+D'3'
label2
	BTFSC __mul_32u__0000F_1_i,5
	RETURN
	BTFSS __mul_32u__0000F_arg_b,0
	GOTO	label3
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
label3
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
	GOTO	label2
; } __mul_32u_32u function end

	ORG 0x00000038
FC_CAL_UAR_00056
; { FC_CAL_UART_Receive_1 ; function begin
	MOVLW 0xFF
	MOVWF FC_CAL_UAR_00056_1_retVal
	CLRF FC_CAL_UAR_00056_1_delay1
	CLRF FC_CAL_UAR_00056_1_regcheck
	CLRF FC_CAL_UAR_00056_1_bWaitForever
	CLRF FC_CAL_UAR_00056_1_rxStatus
	CLRF FC_CAL_UAR_00056_1_dummy
	INCF FC_CAL_UAR_00056_arg_nTimeout, W
	BTFSS STATUS,Z
	GOTO	label4
	MOVLW 0x01
	MOVWF FC_CAL_UAR_00056_1_bWaitForever
label4
	MOVF FC_CAL_UAR_00056_1_rxStatus, F
	BTFSS STATUS,Z
	GOTO	label7
	MOVF FC_CAL_UAR_00056_1_bWaitForever, F
	BTFSS STATUS,Z
	GOTO	label6
	MOVF FC_CAL_UAR_00056_arg_nTimeout, F
	BTFSS STATUS,Z
	GOTO	label5
	MOVLW 0x01
	MOVWF FC_CAL_UAR_00056_1_rxStatus
	GOTO	label6
label5
	MOVLW 0x0A
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	INCF FC_CAL_UAR_00056_1_delay1, W
	MOVWF FC_CAL_UAR_00056_1_delay1
	MOVF FC_CAL_UAR_00056_1_delay1, W
	XORLW 0x64
	BTFSS STATUS,Z
	GOTO	label6
	DECF FC_CAL_UAR_00056_arg_nTimeout, W
	MOVWF FC_CAL_UAR_00056_arg_nTimeout
	CLRWDT
	CLRF FC_CAL_UAR_00056_1_delay1
label6
	MOVLW 0x20
	BCF STATUS, RP0
	ANDWF gbl_pir1, W
	BSF STATUS, RP0
	MOVWF FC_CAL_UAR_00056_1_regcheck
	MOVF FC_CAL_UAR_00056_1_regcheck, F
	BTFSC STATUS,Z
	GOTO	label4
	MOVLW 0x02
	MOVWF FC_CAL_UAR_00056_1_rxStatus
	GOTO	label4
label7
	MOVF FC_CAL_UAR_00056_1_rxStatus, W
	XORLW 0x02
	BTFSS STATUS,Z
	GOTO	label10
	MOVLW 0x04
	BCF STATUS, RP0
	ANDWF gbl_rcsta, W
	BSF STATUS, RP0
	MOVWF FC_CAL_UAR_00056_1_regcheck
	MOVF FC_CAL_UAR_00056_1_regcheck, F
	BTFSC STATUS,Z
	GOTO	label8
	BCF STATUS, RP0
	MOVF gbl_rcreg, W
	BSF STATUS, RP0
	MOVWF FC_CAL_UAR_00056_1_dummy
	GOTO	label10
label8
	MOVLW 0x02
	BCF STATUS, RP0
	ANDWF gbl_rcsta, W
	BSF STATUS, RP0
	MOVWF FC_CAL_UAR_00056_1_regcheck
	MOVF FC_CAL_UAR_00056_1_regcheck, F
	BTFSC STATUS,Z
	GOTO	label9
	BCF STATUS, RP0
	BCF gbl_rcsta,4
	BSF gbl_rcsta,4
	GOTO	label10
label9
	CLRF FC_CAL_UAR_00056_1_retVal
	BCF STATUS, RP0
	MOVF gbl_rcreg, W
	BSF STATUS, RP0
	IORWF FC_CAL_UAR_00056_1_retVal, W
	MOVWF FC_CAL_UAR_00056_1_retVal
label10
	BSF STATUS, RP0
	MOVF FC_CAL_UAR_00056_1_retVal, W
	MOVWF CompTempVarRet2293
	CLRF CompTempVarRet2293+D'1'
	RETURN
; } FC_CAL_UART_Receive_1 function end

	ORG 0x00000090
FCM_data_b_00051
; { FCM_data_bank ; function begin
	MOVF gbl_FCV_DIGIT_TIME, W
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label11
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label12
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label13
	XORLW 0x07
	BTFSC STATUS,Z
	GOTO	label14
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label15
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label16
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label17
	XORLW 0x0F
	BTFSC STATUS,Z
	GOTO	label18
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label19
	XORLW 0x09
	BTFSC STATUS,Z
	GOTO	label20
	GOTO	label21
label11
	MOVLW 0x06
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS_TIME
	GOTO	label21
label12
	MOVLW 0x5B
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS_TIME
	GOTO	label21
label13
	MOVLW 0x4F
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS_TIME
	GOTO	label21
label14
	MOVLW 0x66
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS_TIME
	GOTO	label21
label15
	MOVLW 0x6D
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS_TIME
	GOTO	label21
label16
	MOVLW 0x7D
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS_TIME
	GOTO	label21
label17
	MOVLW 0x07
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS_TIME
	GOTO	label21
label18
	MOVLW 0x7F
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS_TIME
	GOTO	label21
label19
	MOVLW 0x6F
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS_TIME
	GOTO	label21
label20
	MOVLW 0x3F
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS_TIME
label21
	MOVF gbl_FCV_DIGIT_FOPE, W
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label22
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label23
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label24
	XORLW 0x07
	BTFSC STATUS,Z
	GOTO	label25
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label26
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label27
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label28
	XORLW 0x0F
	BTFSC STATUS,Z
	GOTO	label29
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label30
	XORLW 0x09
	BTFSC STATUS,Z
	GOTO	label31
	GOTO	label32
label22
	MOVLW 0x06
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS_FOPE
	GOTO	label32
label23
	MOVLW 0x5B
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS_FOPE
	GOTO	label32
label24
	MOVLW 0x4F
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS_FOPE
	GOTO	label32
label25
	MOVLW 0x66
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS_FOPE
	GOTO	label32
label26
	MOVLW 0x6D
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS_FOPE
	GOTO	label32
label27
	MOVLW 0x7D
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS_FOPE
	GOTO	label32
label28
	MOVLW 0x07
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS_FOPE
	GOTO	label32
label29
	MOVLW 0x7F
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS_FOPE
	GOTO	label32
label30
	MOVLW 0x6F
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS_FOPE
	GOTO	label32
label31
	MOVLW 0x3F
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVWF gbl_FCV_BITS_FOPE
label32
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVF gbl_FCV_DIGIT_SCORE, W
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label33
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label34
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label35
	XORLW 0x07
	BTFSC STATUS,Z
	GOTO	label36
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label37
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label38
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label39
	XORLW 0x0F
	BTFSC STATUS,Z
	GOTO	label40
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label41
	XORLW 0x09
	BTFSC STATUS,Z
	GOTO	label42
	RETURN
label33
	MOVLW 0x06
	MOVWF gbl_FCV_BITS_SCORE
	RETURN
label34
	MOVLW 0x5B
	MOVWF gbl_FCV_BITS_SCORE
	RETURN
label35
	MOVLW 0x4F
	MOVWF gbl_FCV_BITS_SCORE
	RETURN
label36
	MOVLW 0x66
	MOVWF gbl_FCV_BITS_SCORE
	RETURN
label37
	MOVLW 0x6D
	MOVWF gbl_FCV_BITS_SCORE
	RETURN
label38
	MOVLW 0x7D
	MOVWF gbl_FCV_BITS_SCORE
	RETURN
label39
	MOVLW 0x07
	MOVWF gbl_FCV_BITS_SCORE
	RETURN
label40
	MOVLW 0x7F
	MOVWF gbl_FCV_BITS_SCORE
	RETURN
label41
	MOVLW 0x6F
	MOVWF gbl_FCV_BITS_SCORE
	RETURN
label42
	MOVLW 0x3F
	MOVWF gbl_FCV_BITS_SCORE
	RETURN
; } FCM_data_bank function end

	ORG 0x00000172
__rem_8_8_00000
; { __rem_8_8 ; function begin
	CLRF CompTempVarRet220
	CLRF __rem_8_8_00000_1_c
	CLRF __rem_8_8_00000_1_i
label43
	BTFSC __rem_8_8_00000_1_i,3
	RETURN
	BCF STATUS,C
	RLF __rem_8_8_00000_1_c, F
	RLF __rem_8_8_00000_arg_a, F
	RLF CompTempVarRet220, F
	MOVF __rem_8_8_00000_arg_b, W
	SUBWF CompTempVarRet220, W
	BTFSS STATUS,C
	GOTO	label44
	MOVWF CompTempVarRet220
	BSF __rem_8_8_00000_1_c,0
label44
	INCF __rem_8_8_00000_1_i, F
	GOTO	label43
; } __rem_8_8 function end

	ORG 0x00000183
__rem_32_3_00002
; { __rem_32_32 ; function begin
	CLRF CompTempVarRet212
	CLRF CompTempVarRet212+D'1'
	CLRF CompTempVarRet212+D'2'
	CLRF CompTempVarRet212+D'3'
	CLRF __rem_32_3_00002_1_c
	CLRF __rem_32_3_00002_1_c+D'1'
	CLRF __rem_32_3_00002_1_c+D'2'
	CLRF __rem_32_3_00002_1_c+D'3'
	CLRF __rem_32_3_00002_1_i
label45
	BTFSC __rem_32_3_00002_1_i,5
	RETURN
	BCF STATUS,C
	RLF __rem_32_3_00002_1_c, F
	RLF __rem_32_3_00002_1_c+D'1', F
	RLF __rem_32_3_00002_1_c+D'2', F
	RLF __rem_32_3_00002_1_c+D'3', F
	RLF __rem_32_3_00002_arg_a, F
	RLF __rem_32_3_00002_arg_a+D'1', F
	RLF __rem_32_3_00002_arg_a+D'2', F
	RLF __rem_32_3_00002_arg_a+D'3', F
	RLF CompTempVarRet212, F
	RLF CompTempVarRet212+D'1', F
	RLF CompTempVarRet212+D'2', F
	RLF CompTempVarRet212+D'3', F
	MOVF __rem_32_3_00002_arg_b+D'3', W
	SUBWF CompTempVarRet212+D'3', W
	BTFSS STATUS,Z
	GOTO	label46
	MOVF __rem_32_3_00002_arg_b+D'2', W
	SUBWF CompTempVarRet212+D'2', W
	BTFSS STATUS,Z
	GOTO	label46
	MOVF __rem_32_3_00002_arg_b+D'1', W
	SUBWF CompTempVarRet212+D'1', W
	BTFSS STATUS,Z
	GOTO	label46
	MOVF __rem_32_3_00002_arg_b, W
	SUBWF CompTempVarRet212, W
label46
	BTFSS STATUS,C
	GOTO	label47
	MOVF __rem_32_3_00002_arg_b, W
	SUBWF CompTempVarRet212, F
	MOVF __rem_32_3_00002_arg_b+D'1', W
	BTFSS STATUS,C
	INCFSZ __rem_32_3_00002_arg_b+D'1', W
	SUBWF CompTempVarRet212+D'1', F
	MOVF __rem_32_3_00002_arg_b+D'2', W
	BTFSS STATUS,C
	INCFSZ __rem_32_3_00002_arg_b+D'2', W
	SUBWF CompTempVarRet212+D'2', F
	MOVF __rem_32_3_00002_arg_b+D'3', W
	BTFSS STATUS,C
	INCFSZ __rem_32_3_00002_arg_b+D'3', W
	SUBWF CompTempVarRet212+D'3', F
	BSF __rem_32_3_00002_1_c,0
label47
	INCF __rem_32_3_00002_1_i, F
	GOTO	label45
; } __rem_32_32 function end

	ORG 0x000001BC
__div_8_8_00000
; { __div_8_8 ; function begin
	CLRF __div_8_8_00000_1_r
	CLRF CompTempVarRet218
	CLRF __div_8_8_00000_1_i
label48
	BTFSC __div_8_8_00000_1_i,3
	RETURN
	BCF STATUS,C
	RLF CompTempVarRet218, F
	RLF __div_8_8_00000_arg_a, F
	RLF __div_8_8_00000_1_r, F
	MOVF __div_8_8_00000_arg_b, W
	SUBWF __div_8_8_00000_1_r, W
	BTFSS STATUS,C
	GOTO	label49
	MOVWF __div_8_8_00000_1_r
	BSF CompTempVarRet218,0
label49
	INCF __div_8_8_00000_1_i, F
	GOTO	label48
; } __div_8_8 function end

	ORG 0x000001CD
__div_32_3_00001
; { __div_32_32 ; function begin
	CLRF __div_32_3_00001_1_r
	CLRF __div_32_3_00001_1_r+D'1'
	CLRF __div_32_3_00001_1_r+D'2'
	CLRF __div_32_3_00001_1_r+D'3'
	CLRF CompTempVarRet210
	CLRF CompTempVarRet210+D'1'
	CLRF CompTempVarRet210+D'2'
	CLRF CompTempVarRet210+D'3'
	CLRF __div_32_3_00001_1_i
label50
	BTFSC __div_32_3_00001_1_i,5
	RETURN
	BCF STATUS,C
	RLF CompTempVarRet210, F
	RLF CompTempVarRet210+D'1', F
	RLF CompTempVarRet210+D'2', F
	RLF CompTempVarRet210+D'3', F
	RLF __div_32_3_00001_arg_a, F
	RLF __div_32_3_00001_arg_a+D'1', F
	RLF __div_32_3_00001_arg_a+D'2', F
	RLF __div_32_3_00001_arg_a+D'3', F
	RLF __div_32_3_00001_1_r, F
	RLF __div_32_3_00001_1_r+D'1', F
	RLF __div_32_3_00001_1_r+D'2', F
	RLF __div_32_3_00001_1_r+D'3', F
	MOVF __div_32_3_00001_arg_b+D'3', W
	SUBWF __div_32_3_00001_1_r+D'3', W
	BTFSS STATUS,Z
	GOTO	label51
	MOVF __div_32_3_00001_arg_b+D'2', W
	SUBWF __div_32_3_00001_1_r+D'2', W
	BTFSS STATUS,Z
	GOTO	label51
	MOVF __div_32_3_00001_arg_b+D'1', W
	SUBWF __div_32_3_00001_1_r+D'1', W
	BTFSS STATUS,Z
	GOTO	label51
	MOVF __div_32_3_00001_arg_b, W
	SUBWF __div_32_3_00001_1_r, W
label51
	BTFSS STATUS,C
	GOTO	label52
	MOVF __div_32_3_00001_arg_b, W
	SUBWF __div_32_3_00001_1_r, F
	MOVF __div_32_3_00001_arg_b+D'1', W
	BTFSS STATUS,C
	INCFSZ __div_32_3_00001_arg_b+D'1', W
	SUBWF __div_32_3_00001_1_r+D'1', F
	MOVF __div_32_3_00001_arg_b+D'2', W
	BTFSS STATUS,C
	INCFSZ __div_32_3_00001_arg_b+D'2', W
	SUBWF __div_32_3_00001_1_r+D'2', F
	MOVF __div_32_3_00001_arg_b+D'3', W
	BTFSS STATUS,C
	INCFSZ __div_32_3_00001_arg_b+D'3', W
	SUBWF __div_32_3_00001_1_r+D'3', F
	BSF CompTempVarRet210,0
label52
	INCF __div_32_3_00001_1_i, F
	GOTO	label50
; } __div_32_32 function end

	ORG 0x00000206
FC_CAL_UAR_00054
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

	ORG 0x00000215
FCM_regist_00052
; { FCM_register ; function begin
	BSF STATUS, RP0
	BCF STATUS, RP1
	MOVF gbl_FCV_MIN_TENS, W
	MOVWF gbl_FCV_DIGIT_TIME
	MOVLW 0x08
	MOVWF gbl_FCV_DIGIT_FOPE
	MOVF gbl_FCV_HOME_SCORE_TENS, W
	MOVWF gbl_FCV_DIGIT_SCORE
	CALL FCM_data_b_00051
	MOVLW 0xFE
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	BSF STATUS, RP0
	CLRF gbl_FCLV_LOOP1
label53
	MOVLW 0x08
	SUBWF gbl_FCLV_LOOP1, W
	BTFSC STATUS,C
	GOTO	label60
	MOVLW 0xFE
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	MOVLW 0x01
	BSF STATUS, RP0
	ANDWF gbl_FCV_BITS_TIME, W
	MOVWF CompTempVar2195
	CLRF CompTempVar2196
	MOVF CompTempVar2195, F
	BTFSS STATUS,Z
	BSF CompTempVar2196,0
	BCF gbl_FCV_DAT_TIME,2
	MOVF CompTempVar2196, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DAT_TIME,2
	MOVLW 0x01
	ANDWF gbl_FCV_BITS_FOPE, W
	MOVWF CompTempVar2197
	CLRF CompTempVar2198
	MOVF CompTempVar2197, F
	BTFSS STATUS,Z
	BSF CompTempVar2198,0
	BCF gbl_FCV_DAT_FOPE,1
	MOVF CompTempVar2198, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DAT_FOPE,1
	MOVLW 0x01
	ANDWF gbl_FCV_BITS_SCORE, W
	MOVWF CompTempVar2199
	CLRF CompTempVar2200
	MOVF CompTempVar2199, F
	BTFSS STATUS,Z
	BSF CompTempVar2200,0
	BCF gbl_FCV_DAT_SCORE,0
	MOVF CompTempVar2200, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DAT_SCORE,0
	MOVLW 0xFB
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	BTFSS gbl_FCV_DAT_TIME,2
	GOTO	label54
	MOVLW 0xFB
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	BSF STATUS, RP0
	MOVWF CompTempVar2201
	MOVLW 0x04
	IORWF CompTempVar2201, W
	BCF STATUS, RP0
	MOVWF gbl_portc
	GOTO	label55
label54
	MOVLW 0xFB
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label55
	MOVLW 0xEF
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	BTFSS gbl_FCV_DAT_FOPE,1
	GOTO	label56
	MOVLW 0xEF
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	BSF STATUS, RP0
	MOVWF CompTempVar2202
	MOVLW 0x10
	IORWF CompTempVar2202, W
	BCF STATUS, RP0
	MOVWF gbl_portc
	GOTO	label57
label56
	MOVLW 0xEF
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label57
	MOVLW 0xF7
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	BTFSS gbl_FCV_DAT_SCORE,0
	GOTO	label58
	MOVLW 0xF7
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	BSF STATUS, RP0
	MOVWF CompTempVar2203
	MOVLW 0x08
	IORWF CompTempVar2203, W
	BCF STATUS, RP0
	MOVWF gbl_portc
	GOTO	label59
label58
	MOVLW 0xF7
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label59
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	BSF STATUS, RP0
	MOVWF CompTempVar2204
	MOVLW 0x01
	IORWF CompTempVar2204, W
	BCF STATUS, RP0
	MOVWF gbl_portc
	BSF STATUS, RP0
	MOVF gbl_FCV_BITS_TIME, F
	BCF STATUS,C
	RRF gbl_FCV_BITS_TIME, F
	MOVF gbl_FCV_BITS_FOPE, F
	BCF STATUS,C
	RRF gbl_FCV_BITS_FOPE, F
	MOVF gbl_FCV_BITS_SCORE, F
	BCF STATUS,C
	RRF gbl_FCV_BITS_SCORE, F
	INCF gbl_FCLV_LOOP1, F
	GOTO	label53
label60
	MOVF gbl_FCV_MIN_ONES, W
	MOVWF gbl_FCV_DIGIT_TIME
	MOVF gbl_FCV_PERIOD, W
	MOVWF gbl_FCV_DIGIT_FOPE
	MOVF gbl_FCV_HOME_SCORE_ONES, W
	MOVWF gbl_FCV_DIGIT_SCORE
	CALL FCM_data_b_00051
	MOVLW 0xFE
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	BSF STATUS, RP0
	CLRF gbl_FCLV_LOOP2
label61
	MOVLW 0x08
	SUBWF gbl_FCLV_LOOP2, W
	BTFSC STATUS,C
	GOTO	label68
	MOVLW 0xFE
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	MOVLW 0x01
	BSF STATUS, RP0
	ANDWF gbl_FCV_BITS_TIME, W
	MOVWF CompTempVar2208
	CLRF CompTempVar2209
	MOVF CompTempVar2208, F
	BTFSS STATUS,Z
	BSF CompTempVar2209,0
	BCF gbl_FCV_DAT_TIME,2
	MOVF CompTempVar2209, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DAT_TIME,2
	MOVLW 0x01
	ANDWF gbl_FCV_BITS_FOPE, W
	MOVWF CompTempVar2210
	CLRF CompTempVar2211
	MOVF CompTempVar2210, F
	BTFSS STATUS,Z
	BSF CompTempVar2211,0
	BCF gbl_FCV_DAT_FOPE,1
	MOVF CompTempVar2211, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DAT_FOPE,1
	MOVLW 0x01
	ANDWF gbl_FCV_BITS_SCORE, W
	MOVWF CompTempVar2212
	CLRF CompTempVar2213
	MOVF CompTempVar2212, F
	BTFSS STATUS,Z
	BSF CompTempVar2213,0
	BCF gbl_FCV_DAT_SCORE,0
	MOVF CompTempVar2213, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DAT_SCORE,0
	MOVLW 0xFB
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	BTFSS gbl_FCV_DAT_TIME,2
	GOTO	label62
	MOVLW 0xFB
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	BSF STATUS, RP0
	MOVWF CompTempVar2214
	MOVLW 0x04
	IORWF CompTempVar2214, W
	BCF STATUS, RP0
	MOVWF gbl_portc
	GOTO	label63
label62
	MOVLW 0xFB
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label63
	MOVLW 0xEF
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	BTFSS gbl_FCV_DAT_FOPE,1
	GOTO	label64
	MOVLW 0xEF
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	BSF STATUS, RP0
	MOVWF CompTempVar2215
	MOVLW 0x10
	IORWF CompTempVar2215, W
	BCF STATUS, RP0
	MOVWF gbl_portc
	GOTO	label65
label64
	MOVLW 0xEF
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label65
	MOVLW 0xF7
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	BTFSS gbl_FCV_DAT_SCORE,0
	GOTO	label66
	MOVLW 0xF7
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	BSF STATUS, RP0
	MOVWF CompTempVar2216
	MOVLW 0x08
	IORWF CompTempVar2216, W
	BCF STATUS, RP0
	MOVWF gbl_portc
	GOTO	label67
label66
	MOVLW 0xF7
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label67
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	BSF STATUS, RP0
	MOVWF CompTempVar2217
	MOVLW 0x01
	IORWF CompTempVar2217, W
	BCF STATUS, RP0
	MOVWF gbl_portc
	BSF STATUS, RP0
	MOVF gbl_FCV_BITS_TIME, F
	BCF STATUS,C
	RRF gbl_FCV_BITS_TIME, F
	MOVF gbl_FCV_BITS_FOPE, F
	BCF STATUS,C
	RRF gbl_FCV_BITS_FOPE, F
	MOVF gbl_FCV_BITS_SCORE, F
	BCF STATUS,C
	RRF gbl_FCV_BITS_SCORE, F
	INCF gbl_FCLV_LOOP2, F
	GOTO	label61
label68
	MOVF gbl_FCV_SEC_TENS, W
	MOVWF gbl_FCV_DIGIT_TIME
	MOVF gbl_FCV_HOME_FOUL, W
	MOVWF gbl_FCV_DIGIT_FOPE
	MOVF gbl_FCV_AWAY_SCORE_TENS, W
	MOVWF gbl_FCV_DIGIT_SCORE
	CALL FCM_data_b_00051
	MOVLW 0xFE
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	BSF STATUS, RP0
	CLRF gbl_FCLV_LOOP3
label69
	MOVLW 0x08
	SUBWF gbl_FCLV_LOOP3, W
	BTFSC STATUS,C
	GOTO	label76
	MOVLW 0xFE
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	MOVLW 0x01
	BSF STATUS, RP0
	ANDWF gbl_FCV_BITS_TIME, W
	MOVWF CompTempVar2221
	CLRF CompTempVar2222
	MOVF CompTempVar2221, F
	BTFSS STATUS,Z
	BSF CompTempVar2222,0
	BCF gbl_FCV_DAT_TIME,2
	MOVF CompTempVar2222, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DAT_TIME,2
	MOVLW 0x01
	ANDWF gbl_FCV_BITS_FOPE, W
	MOVWF CompTempVar2223
	CLRF CompTempVar2224
	MOVF CompTempVar2223, F
	BTFSS STATUS,Z
	BSF CompTempVar2224,0
	BCF gbl_FCV_DAT_FOPE,1
	MOVF CompTempVar2224, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DAT_FOPE,1
	MOVLW 0x01
	ANDWF gbl_FCV_BITS_SCORE, W
	MOVWF CompTempVar2225
	CLRF CompTempVar2226
	MOVF CompTempVar2225, F
	BTFSS STATUS,Z
	BSF CompTempVar2226,0
	BCF gbl_FCV_DAT_SCORE,0
	MOVF CompTempVar2226, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DAT_SCORE,0
	MOVLW 0xFB
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	BTFSS gbl_FCV_DAT_TIME,2
	GOTO	label70
	MOVLW 0xFB
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	BSF STATUS, RP0
	MOVWF CompTempVar2227
	MOVLW 0x04
	IORWF CompTempVar2227, W
	BCF STATUS, RP0
	MOVWF gbl_portc
	GOTO	label71
label70
	MOVLW 0xFB
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label71
	MOVLW 0xEF
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	BTFSS gbl_FCV_DAT_FOPE,1
	GOTO	label72
	MOVLW 0xEF
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	BSF STATUS, RP0
	MOVWF CompTempVar2228
	MOVLW 0x10
	IORWF CompTempVar2228, W
	BCF STATUS, RP0
	MOVWF gbl_portc
	GOTO	label73
label72
	MOVLW 0xEF
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label73
	MOVLW 0xF7
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	BTFSS gbl_FCV_DAT_SCORE,0
	GOTO	label74
	MOVLW 0xF7
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	BSF STATUS, RP0
	MOVWF CompTempVar2229
	MOVLW 0x08
	IORWF CompTempVar2229, W
	BCF STATUS, RP0
	MOVWF gbl_portc
	GOTO	label75
label74
	MOVLW 0xF7
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label75
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	BSF STATUS, RP0
	MOVWF CompTempVar2230
	MOVLW 0x01
	IORWF CompTempVar2230, W
	BCF STATUS, RP0
	MOVWF gbl_portc
	BSF STATUS, RP0
	MOVF gbl_FCV_BITS_TIME, F
	BCF STATUS,C
	RRF gbl_FCV_BITS_TIME, F
	MOVF gbl_FCV_BITS_FOPE, F
	BCF STATUS,C
	RRF gbl_FCV_BITS_FOPE, F
	MOVF gbl_FCV_BITS_SCORE, F
	BCF STATUS,C
	RRF gbl_FCV_BITS_SCORE, F
	INCF gbl_FCLV_LOOP3, F
	GOTO	label69
label76
	MOVF gbl_FCV_SEC_ONES, W
	MOVWF gbl_FCV_DIGIT_TIME
	MOVF gbl_FCV_AWAY_FOUL, W
	MOVWF gbl_FCV_DIGIT_FOPE
	MOVF gbl_FCV_AWAY_SCORE_ONES, W
	MOVWF gbl_FCV_DIGIT_SCORE
	CALL FCM_data_b_00051
	MOVLW 0x80
	ADDWF gbl_FCV_BITS_TIME, W
	MOVWF gbl_FCV_BITS_TIME
	MOVLW 0xFE
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	BSF STATUS, RP0
	CLRF gbl_FCLV_LOOP4
label77
	MOVLW 0x08
	SUBWF gbl_FCLV_LOOP4, W
	BTFSC STATUS,C
	GOTO	label84
	MOVLW 0xFE
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	MOVLW 0x01
	BSF STATUS, RP0
	ANDWF gbl_FCV_BITS_TIME, W
	MOVWF CompTempVar2234
	CLRF CompTempVar2235
	MOVF CompTempVar2234, F
	BTFSS STATUS,Z
	BSF CompTempVar2235,0
	BCF gbl_FCV_DAT_TIME,2
	MOVF CompTempVar2235, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DAT_TIME,2
	MOVLW 0x01
	ANDWF gbl_FCV_BITS_FOPE, W
	MOVWF CompTempVar2236
	CLRF CompTempVar2237
	MOVF CompTempVar2236, F
	BTFSS STATUS,Z
	BSF CompTempVar2237,0
	BCF gbl_FCV_DAT_FOPE,1
	MOVF CompTempVar2237, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DAT_FOPE,1
	MOVLW 0x01
	ANDWF gbl_FCV_BITS_SCORE, W
	MOVWF CompTempVar2238
	CLRF CompTempVar2239
	MOVF CompTempVar2238, F
	BTFSS STATUS,Z
	BSF CompTempVar2239,0
	BCF gbl_FCV_DAT_SCORE,0
	MOVF CompTempVar2239, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DAT_SCORE,0
	MOVLW 0xFB
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	BTFSS gbl_FCV_DAT_TIME,2
	GOTO	label78
	MOVLW 0xFB
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	BSF STATUS, RP0
	MOVWF CompTempVar2240
	MOVLW 0x04
	IORWF CompTempVar2240, W
	BCF STATUS, RP0
	MOVWF gbl_portc
	GOTO	label79
label78
	MOVLW 0xFB
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label79
	MOVLW 0xEF
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	BTFSS gbl_FCV_DAT_FOPE,1
	GOTO	label80
	MOVLW 0xEF
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	BSF STATUS, RP0
	MOVWF CompTempVar2241
	MOVLW 0x10
	IORWF CompTempVar2241, W
	BCF STATUS, RP0
	MOVWF gbl_portc
	GOTO	label81
label80
	MOVLW 0xEF
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label81
	MOVLW 0xF7
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	BTFSS gbl_FCV_DAT_SCORE,0
	GOTO	label82
	MOVLW 0xF7
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	BSF STATUS, RP0
	MOVWF CompTempVar2242
	MOVLW 0x08
	IORWF CompTempVar2242, W
	BCF STATUS, RP0
	MOVWF gbl_portc
	GOTO	label83
label82
	MOVLW 0xF7
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label83
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	BSF STATUS, RP0
	MOVWF CompTempVar2243
	MOVLW 0x01
	IORWF CompTempVar2243, W
	BCF STATUS, RP0
	MOVWF gbl_portc
	BSF STATUS, RP0
	MOVF gbl_FCV_BITS_TIME, F
	BCF STATUS,C
	RRF gbl_FCV_BITS_TIME, F
	MOVF gbl_FCV_BITS_FOPE, F
	BCF STATUS,C
	RRF gbl_FCV_BITS_FOPE, F
	MOVF gbl_FCV_BITS_SCORE, F
	BCF STATUS,C
	RRF gbl_FCV_BITS_SCORE, F
	INCF gbl_FCLV_LOOP4, F
	GOTO	label77
label84
	MOVLW 0xFD
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFD
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	BSF STATUS, RP0
	MOVWF CompTempVar2247
	MOVLW 0x02
	IORWF CompTempVar2247, W
	BCF STATUS, RP0
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
; } FCM_register function end

	ORG 0x00000473
FCI_STRING_0004F
; { FCI_STRING_TO_INT ; function begin
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
	CLRF CompTempVar2065
	MOVF CompTempVar2065, W
	ADDWF FSR, F
	MOVF INDF, W
	XORLW 0x2D
	BTFSS STATUS,Z
	GOTO	label85
	MOVLW 0x01
	MOVWF FCI_STRING_0004F_1_bNegative
	MOVWF FCI_STRING_0004F_1_idx
label85
	MOVF FCI_STRING_0004F_arg_MSZ_String, W
	SUBWF FCI_STRING_0004F_1_idx, W
	BTFSC STATUS,C
	GOTO	label86
	BCF STATUS,IRP
	BTFSC FCI_STRING_0004F_arg_String+D'1',0
	BSF STATUS,IRP
	MOVF FCI_STRING_0004F_arg_String, W
	ADDWF FCI_STRING_0004F_1_idx, W
	MOVWF FSR
	MOVLW 0x30
	SUBWF INDF, W
	BTFSS STATUS,C
	GOTO	label86
	BCF STATUS,IRP
	BTFSC FCI_STRING_0004F_arg_String+D'1',0
	BSF STATUS,IRP
	MOVF FCI_STRING_0004F_arg_String, W
	ADDWF FCI_STRING_0004F_1_idx, W
	MOVWF FSR
	MOVF INDF, W
	SUBLW 0x39
	BTFSS STATUS,C
	GOTO	label86
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
	MOVWF CompTempVar2073
	MOVF CompTempVarRet464+D'1', W
	MOVWF CompTempVar2074
	MOVF CompTempVarRet464+D'2', W
	MOVWF CompTempVar2075
	MOVF CompTempVarRet464+D'3', W
	MOVWF CompTempVar2076
	MOVF CompTempVar2073, W
	MOVWF FCI_STRING_0004F_1_RetVal
	MOVF CompTempVar2074, W
	MOVWF FCI_STRING_0004F_1_RetVal+D'1'
	MOVF CompTempVar2075, W
	MOVWF FCI_STRING_0004F_1_RetVal+D'2'
	MOVF CompTempVar2076, W
	MOVWF FCI_STRING_0004F_1_RetVal+D'3'
	BCF STATUS,IRP
	BTFSC FCI_STRING_0004F_arg_String+D'1',0
	BSF STATUS,IRP
	MOVF FCI_STRING_0004F_arg_String, W
	ADDWF FCI_STRING_0004F_1_idx, W
	MOVWF FSR
	MOVLW 0x30
	SUBWF INDF, W
	MOVWF CompTempVar2079
	CLRF CompTempVar2080
	CLRF CompTempVar2081
	CLRF CompTempVar2082
	MOVF FCI_STRING_0004F_1_RetVal, W
	ADDWF CompTempVar2079, F
	MOVF FCI_STRING_0004F_1_RetVal+D'1', W
	BTFSC STATUS,C
	INCFSZ FCI_STRING_0004F_1_RetVal+D'1', W
	ADDWF CompTempVar2080, F
	MOVF FCI_STRING_0004F_1_RetVal+D'2', W
	BTFSC STATUS,C
	INCFSZ FCI_STRING_0004F_1_RetVal+D'2', W
	ADDWF CompTempVar2081, F
	MOVF FCI_STRING_0004F_1_RetVal+D'3', W
	BTFSC STATUS,C
	INCFSZ FCI_STRING_0004F_1_RetVal+D'3', W
	ADDWF CompTempVar2082, F
	MOVF CompTempVar2079, W
	MOVWF FCI_STRING_0004F_1_RetVal
	MOVF CompTempVar2080, W
	MOVWF FCI_STRING_0004F_1_RetVal+D'1'
	MOVF CompTempVar2081, W
	MOVWF FCI_STRING_0004F_1_RetVal+D'2'
	MOVF CompTempVar2082, W
	MOVWF FCI_STRING_0004F_1_RetVal+D'3'
	INCF FCI_STRING_0004F_1_idx, W
	MOVWF FCI_STRING_0004F_1_idx
	GOTO	label85
label86
	MOVF FCI_STRING_0004F_1_bNegative, F
	BTFSC STATUS,Z
	GOTO	label87
	MOVF FCI_STRING_0004F_1_RetVal, W
	SUBLW 0x00
	MOVWF CompTempVar2083
	MOVLW 0x00
	MOVWF CompTempVar2084
	MOVWF CompTempVar2085
	MOVWF CompTempVar2086
	MOVF FCI_STRING_0004F_1_RetVal+D'1', W
	BTFSS STATUS,C
	INCFSZ FCI_STRING_0004F_1_RetVal+D'1', W
	SUBWF CompTempVar2084, F
	MOVF FCI_STRING_0004F_1_RetVal+D'2', W
	BTFSS STATUS,C
	INCFSZ FCI_STRING_0004F_1_RetVal+D'2', W
	SUBWF CompTempVar2085, F
	MOVF FCI_STRING_0004F_1_RetVal+D'3', W
	BTFSS STATUS,C
	INCFSZ FCI_STRING_0004F_1_RetVal+D'3', W
	SUBWF CompTempVar2086, F
	MOVF CompTempVar2083, W
	MOVWF FCI_STRING_0004F_1_RetVal
	MOVF CompTempVar2084, W
	MOVWF FCI_STRING_0004F_1_RetVal+D'1'
	MOVF CompTempVar2085, W
	MOVWF FCI_STRING_0004F_1_RetVal+D'2'
	MOVF CompTempVar2086, W
	MOVWF FCI_STRING_0004F_1_RetVal+D'3'
label87
	MOVF FCI_STRING_0004F_1_RetVal, W
	MOVWF CompTempVarRet2063
	MOVF FCI_STRING_0004F_1_RetVal+D'1', W
	MOVWF CompTempVarRet2063+D'1'
	MOVF FCI_STRING_0004F_1_RetVal+D'2', W
	MOVWF CompTempVarRet2063+D'2'
	MOVF FCI_STRING_0004F_1_RetVal+D'3', W
	MOVWF CompTempVarRet2063+D'3'
	RETURN
; } FCI_STRING_TO_INT function end

	ORG 0x0000050A
FCI_RIGHTS_00048
; { FCI_RIGHTSTRING ; function begin
	MOVF FCI_RIGHTS_00048_arg_iDst_len, F
	BTFSS STATUS,Z
	GOTO	label88
	CLRF CompTempVarRet2006
	RETURN
label88
	CLRF FCI_RIGHTS_00048_1_idx
label89
	MOVF FCI_RIGHTS_00048_arg_iSrc_len, W
	SUBWF FCI_RIGHTS_00048_1_idx, W
	BTFSC STATUS,C
	GOTO	label90
	BCF STATUS,IRP
	BTFSC FCI_RIGHTS_00048_arg_sSrc+D'1',0
	BSF STATUS,IRP
	MOVF FCI_RIGHTS_00048_arg_sSrc, W
	ADDWF FCI_RIGHTS_00048_1_idx, W
	MOVWF FSR
	MOVF INDF, F
	BTFSC STATUS,Z
	GOTO	label90
	INCF FCI_RIGHTS_00048_1_idx, F
	GOTO	label89
label90
	MOVF FCI_RIGHTS_00048_arg_iCount, W
	SUBWF FCI_RIGHTS_00048_1_idx, W
	BTFSC STATUS,C
	GOTO	label91
	MOVF FCI_RIGHTS_00048_1_idx, W
	MOVWF FCI_RIGHTS_00048_arg_iCount
label91
	MOVF FCI_RIGHTS_00048_arg_iCount, W
	SUBWF FCI_RIGHTS_00048_1_idx, W
	MOVWF FCI_RIGHTS_00048_1_delta
	MOVF FCI_RIGHTS_00048_arg_iCount, W
	SUBWF FCI_RIGHTS_00048_arg_iDst_len, W
	BTFSC STATUS,C
	GOTO	label92
	MOVF FCI_RIGHTS_00048_arg_iDst_len, W
	MOVWF FCI_RIGHTS_00048_arg_iCount
label92
	MOVF FCI_RIGHTS_00048_1_delta, W
	ADDWF FCI_RIGHTS_00048_arg_sSrc, F
	BTFSC STATUS,C
	INCF FCI_RIGHTS_00048_arg_sSrc+D'1', F
	CLRF FCI_RIGHTS_00048_1_idx
label93
	MOVF FCI_RIGHTS_00048_arg_iCount, W
	SUBWF FCI_RIGHTS_00048_1_idx, W
	BTFSC STATUS,C
	GOTO	label94
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
	GOTO	label93
label94
	MOVF FCI_RIGHTS_00048_arg_iDst_len, W
	SUBWF FCI_RIGHTS_00048_1_idx, W
	BTFSC STATUS,C
	GOTO	label95
	BCF STATUS,IRP
	BTFSC FCI_RIGHTS_00048_arg_sDst+D'1',0
	BSF STATUS,IRP
	MOVF FCI_RIGHTS_00048_arg_sDst, W
	MOVWF FSR
	MOVLW 0x00
	MOVWF INDF
label95
	MOVF FCI_RIGHTS_00048_1_idx, W
	MOVWF CompTempVarRet2006
	RETURN
; } FCI_RIGHTSTRING function end

	ORG 0x0000055B
FCD_RS2320_0005C
; { FCD_RS2320_ReceiveRS232String ; function begin
	MOVLW 0xFF
	MOVWF FCD_RS2320_0005C_1_RS232_TO
	CLRF FCD_RS2320_0005C_1_RS232_TO+D'1'
	MOVF FCD_RS2320_0005C_arg_NumBytes, W
	SUBWF FCD_RS2320_0005C_arg_FCR_R_0005D, W
	BTFSC STATUS,C
	GOTO	label96
	MOVF FCD_RS2320_0005C_arg_FCR_R_0005D, W
	MOVWF FCD_RS2320_0005C_arg_NumBytes
label96
	CLRF FCD_RS2320_0005C_1_idx
label97
	MOVF FCD_RS2320_0005C_arg_NumBytes, W
	SUBWF FCD_RS2320_0005C_1_idx, W
	BTFSC STATUS,C
	GOTO	label99
	MOVF FCD_RS2320_0005C_arg_nTimeout, W
	MOVWF FC_CAL_UAR_00056_arg_nTimeout
	CALL FC_CAL_UAR_00056
	MOVF CompTempVarRet2293, W
	MOVWF FCD_RS2320_0005C_1_in
	MOVF CompTempVarRet2293+D'1', W
	MOVWF FCD_RS2320_0005C_1_in+D'1'
	MOVF FCD_RS2320_0005C_1_in+D'1', W
	XORLW 0x80
	MOVWF CompTempVar2299
	MOVF FCD_RS2320_0005C_1_RS232_TO+D'1', W
	XORLW 0x80
	SUBWF CompTempVar2299, W
	BTFSS STATUS,Z
	GOTO	label98
	MOVF FCD_RS2320_0005C_1_RS232_TO, W
	SUBWF FCD_RS2320_0005C_1_in, W
label98
	BTFSC STATUS,C
	GOTO	label99
	MOVF FCD_RS2320_0005C_1_in, W
	MOVWF CompTempVar2301
	BCF STATUS,IRP
	BTFSC FCD_RS2320_0005C_arg_FCR_RETVAL+D'1',0
	BSF STATUS,IRP
	MOVF FCD_RS2320_0005C_arg_FCR_RETVAL, W
	ADDWF FCD_RS2320_0005C_1_idx, W
	MOVWF FSR
	MOVF CompTempVar2301, W
	MOVWF INDF
	INCF FCD_RS2320_0005C_1_idx, F
	GOTO	label97
label99
	MOVF FCD_RS2320_0005C_arg_FCR_R_0005D, W
	SUBWF FCD_RS2320_0005C_1_idx, W
	BTFSC STATUS,C
	RETURN
	BCF STATUS,IRP
	BTFSC FCD_RS2320_0005C_arg_FCR_RETVAL+D'1',0
	BSF STATUS,IRP
	MOVF FCD_RS2320_0005C_arg_FCR_RETVAL, W
	ADDWF FCD_RS2320_0005C_1_idx, W
	MOVWF FSR
	MOVLW 0x00
	MOVWF INDF
	RETURN
; } FCD_RS2320_ReceiveRS232String function end

	ORG 0x00000595
FCD_RS2320_0005B
; { FCD_RS2320_ReceiveRS232Char ; function begin
	MOVF FCD_RS2320_0005B_arg_nTimeout, W
	MOVWF FC_CAL_UAR_00056_arg_nTimeout
	CALL FC_CAL_UAR_00056
	MOVF CompTempVarRet2293, W
	MOVWF CompTempVarRet2298
	MOVF CompTempVarRet2293+D'1', W
	MOVWF CompTempVarRet2298+D'1'
	RETURN
; } FCD_RS2320_ReceiveRS232Char function end

	ORG 0x0000059D
main
; { main ; function begin
	BSF STATUS, RP0
	BSF STATUS, RP1
	CLRF gbl_ansel
	CLRF gbl_anselh
	CALL FC_CAL_UAR_00054
	MOVLW 0xC0
	MOVWF gbl_option_reg
	MOVLW 0xFD
	ANDWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0xFD
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF gbl_porta
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
label100
	MOVLW 0x01
	BSF STATUS, RP0
	MOVWF FCD_RS2320_0005B_arg_nTimeout
	CALL FCD_RS2320_0005B
	MOVF CompTempVarRet2298, W
	MOVWF gbl_FCV_RX
	MOVF gbl_FCV_RX, W
	XORLW 0x45
	BTFSS STATUS,Z
	GOTO	label101
	MOVLW 0xFD
	ANDWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0xFD
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	BSF STATUS, RP0
	MOVWF CompTempVar2303
	MOVLW 0x02
	IORWF CompTempVar2303, W
	BCF STATUS, RP0
	MOVWF gbl_porta
label101
	BSF STATUS, RP0
	MOVF gbl_FCV_RX, W
	XORLW 0x46
	BTFSS STATUS,Z
	GOTO	label102
	MOVLW 0xFD
	ANDWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0xFD
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF gbl_porta
label102
	BSF STATUS, RP0
	MOVF gbl_FCV_RX, W
	XORLW 0x41
	BTFSS STATUS,Z
	GOTO	label105
	MOVLW 0x01
	MOVWF FCD_RS2320_0005B_arg_nTimeout
	CALL FCD_RS2320_0005B
	MOVF CompTempVarRet2298, W
	MOVWF gbl_FCV_RX
	MOVF gbl_FCV_RX, W
	XORLW 0x42
	BTFSS STATUS,Z
	GOTO	label105
	MOVLW HIGH(gbl_FCV_RCV+D'0')
	MOVWF FCD_RS2320_0005C_arg_FCR_RETVAL+D'1'
	MOVLW LOW(gbl_FCV_RCV+D'0')
	MOVWF FCD_RS2320_0005C_arg_FCR_RETVAL
	MOVLW 0x0F
	MOVWF FCD_RS2320_0005C_arg_FCR_R_0005D
	MOVLW 0x01
	MOVWF FCD_RS2320_0005C_arg_nTimeout
	MOVLW 0x0F
	MOVWF FCD_RS2320_0005C_arg_NumBytes
	CALL FCD_RS2320_0005C
	BCF STATUS, RP0
	MOVF gbl_FCV_HOME_SCORE, W
	SUBLW 0x0A
	BTFSS STATUS,Z
	GOTO	label103
	MOVF gbl_FCV_HOME_SCORE+D'1', W
	SUBLW 0x00
	BTFSS STATUS,Z
	GOTO	label103
	MOVF gbl_FCV_HOME_SCORE+D'2', W
	SUBLW 0x00
	BTFSS STATUS,Z
	GOTO	label103
	MOVF gbl_FCV_HOME_SCORE+D'3', W
	SUBLW 0x00
label103
	MOVLW HIGH(gbl_FCV_RCV+D'0')
	BSF STATUS, RP0
	MOVWF FCI_RIGHTS_00048_arg_sSrc+D'1'
	MOVLW LOW(gbl_FCV_RCV+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sSrc
	MOVLW 0x0F
	MOVWF FCI_RIGHTS_00048_arg_iSrc_len
	MOVWF FCI_RIGHTS_00048_arg_iCount
	MOVLW HIGH(gbl_FCV_STRING_TIME+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sDst+D'1'
	MOVLW LOW(gbl_FCV_STRING_TIME+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sDst
	MOVLW 0x04
	MOVWF FCI_RIGHTS_00048_arg_iDst_len
	CALL FCI_RIGHTS_00048
	MOVLW HIGH(gbl_FCV_STRING_TIME+D'0')
	MOVWF FCI_STRING_0004F_arg_String+D'1'
	MOVLW LOW(gbl_FCV_STRING_TIME+D'0')
	MOVWF FCI_STRING_0004F_arg_String
	MOVLW 0x04
	MOVWF FCI_STRING_0004F_arg_MSZ_String
	CALL FCI_STRING_0004F
	MOVF CompTempVarRet2063, W
	BCF STATUS, RP0
	MOVWF gbl_FCV_TIME
	BSF STATUS, RP0
	MOVF CompTempVarRet2063+D'1', W
	BCF STATUS, RP0
	MOVWF gbl_FCV_TIME+D'1'
	BSF STATUS, RP0
	MOVF CompTempVarRet2063+D'2', W
	BCF STATUS, RP0
	MOVWF gbl_FCV_TIME+D'2'
	BSF STATUS, RP0
	MOVF CompTempVarRet2063+D'3', W
	BCF STATUS, RP0
	MOVWF gbl_FCV_TIME+D'3'
	MOVF gbl_FCV_TIME, W
	BSF STATUS, RP0
	MOVWF __div_32_3_00001_arg_a
	BCF STATUS, RP0
	MOVF gbl_FCV_TIME+D'1', W
	BSF STATUS, RP0
	MOVWF __div_32_3_00001_arg_a+D'1'
	BCF STATUS, RP0
	MOVF gbl_FCV_TIME+D'2', W
	BSF STATUS, RP0
	MOVWF __div_32_3_00001_arg_a+D'2'
	BCF STATUS, RP0
	MOVF gbl_FCV_TIME+D'3', W
	BSF STATUS, RP0
	MOVWF __div_32_3_00001_arg_a+D'3'
	MOVLW 0x64
	MOVWF __div_32_3_00001_arg_b
	CLRF __div_32_3_00001_arg_b+D'1'
	CLRF __div_32_3_00001_arg_b+D'2'
	CLRF __div_32_3_00001_arg_b+D'3'
	CALL __div_32_3_00001
	MOVF CompTempVarRet210, W
	MOVWF gbl_FCV_MIN
	BCF STATUS, RP0
	MOVF gbl_FCV_TIME, W
	BSF STATUS, RP0
	MOVWF __rem_32_3_00002_arg_a
	BCF STATUS, RP0
	MOVF gbl_FCV_TIME+D'1', W
	BSF STATUS, RP0
	MOVWF __rem_32_3_00002_arg_a+D'1'
	BCF STATUS, RP0
	MOVF gbl_FCV_TIME+D'2', W
	BSF STATUS, RP0
	MOVWF __rem_32_3_00002_arg_a+D'2'
	BCF STATUS, RP0
	MOVF gbl_FCV_TIME+D'3', W
	BSF STATUS, RP0
	MOVWF __rem_32_3_00002_arg_a+D'3'
	MOVLW 0x64
	MOVWF __rem_32_3_00002_arg_b
	CLRF __rem_32_3_00002_arg_b+D'1'
	CLRF __rem_32_3_00002_arg_b+D'2'
	CLRF __rem_32_3_00002_arg_b+D'3'
	CALL __rem_32_3_00002
	MOVF CompTempVarRet212, W
	MOVWF gbl_FCV_SEC
	MOVLW HIGH(gbl_FCV_RCV+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sSrc+D'1'
	MOVLW LOW(gbl_FCV_RCV+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sSrc
	MOVLW 0x0F
	MOVWF FCI_RIGHTS_00048_arg_iSrc_len
	MOVLW 0x0B
	MOVWF FCI_RIGHTS_00048_arg_iCount
	MOVLW HIGH(gbl_FCV_STRING_FOPE+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sDst+D'1'
	MOVLW LOW(gbl_FCV_STRING_FOPE+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sDst
	MOVLW 0x03
	MOVWF FCI_RIGHTS_00048_arg_iDst_len
	CALL FCI_RIGHTS_00048
	MOVLW HIGH(gbl_FCV_STRING_FOPE+D'0')
	MOVWF FCI_STRING_0004F_arg_String+D'1'
	MOVLW LOW(gbl_FCV_STRING_FOPE+D'0')
	MOVWF FCI_STRING_0004F_arg_String
	MOVLW 0x03
	MOVWF FCI_STRING_0004F_arg_MSZ_String
	CALL FCI_STRING_0004F
	MOVF CompTempVarRet2063, W
	BCF STATUS, RP0
	MOVWF gbl_FCV_FOPE
	BSF STATUS, RP0
	MOVF CompTempVarRet2063+D'1', W
	BCF STATUS, RP0
	MOVWF gbl_FCV_FOPE+D'1'
	BSF STATUS, RP0
	MOVF CompTempVarRet2063+D'2', W
	BCF STATUS, RP0
	MOVWF gbl_FCV_FOPE+D'2'
	BSF STATUS, RP0
	MOVF CompTempVarRet2063+D'3', W
	BCF STATUS, RP0
	MOVWF gbl_FCV_FOPE+D'3'
	MOVF gbl_FCV_FOPE, W
	BSF STATUS, RP0
	MOVWF __div_32_3_00001_arg_a
	BCF STATUS, RP0
	MOVF gbl_FCV_FOPE+D'1', W
	BSF STATUS, RP0
	MOVWF __div_32_3_00001_arg_a+D'1'
	BCF STATUS, RP0
	MOVF gbl_FCV_FOPE+D'2', W
	BSF STATUS, RP0
	MOVWF __div_32_3_00001_arg_a+D'2'
	BCF STATUS, RP0
	MOVF gbl_FCV_FOPE+D'3', W
	BSF STATUS, RP0
	MOVWF __div_32_3_00001_arg_a+D'3'
	MOVLW 0x64
	MOVWF __div_32_3_00001_arg_b
	CLRF __div_32_3_00001_arg_b+D'1'
	CLRF __div_32_3_00001_arg_b+D'2'
	CLRF __div_32_3_00001_arg_b+D'3'
	CALL __div_32_3_00001
	MOVF CompTempVarRet210, W
	MOVWF gbl_FCV_HOME_FOUL
	BCF STATUS, RP0
	MOVF gbl_FCV_FOPE, W
	BSF STATUS, RP0
	MOVWF __rem_32_3_00002_arg_a
	BCF STATUS, RP0
	MOVF gbl_FCV_FOPE+D'1', W
	BSF STATUS, RP0
	MOVWF __rem_32_3_00002_arg_a+D'1'
	BCF STATUS, RP0
	MOVF gbl_FCV_FOPE+D'2', W
	BSF STATUS, RP0
	MOVWF __rem_32_3_00002_arg_a+D'2'
	BCF STATUS, RP0
	MOVF gbl_FCV_FOPE+D'3', W
	BSF STATUS, RP0
	MOVWF __rem_32_3_00002_arg_a+D'3'
	MOVLW 0x0A
	MOVWF __rem_32_3_00002_arg_b
	CLRF __rem_32_3_00002_arg_b+D'1'
	CLRF __rem_32_3_00002_arg_b+D'2'
	CLRF __rem_32_3_00002_arg_b+D'3'
	CALL __rem_32_3_00002
	MOVF CompTempVarRet212, W
	MOVWF gbl_FCV_AWAY_FOUL
	BCF STATUS, RP0
	MOVF gbl_FCV_FOPE, W
	BSF STATUS, RP0
	MOVWF __rem_32_3_00002_arg_a
	BCF STATUS, RP0
	MOVF gbl_FCV_FOPE+D'1', W
	BSF STATUS, RP0
	MOVWF __rem_32_3_00002_arg_a+D'1'
	BCF STATUS, RP0
	MOVF gbl_FCV_FOPE+D'2', W
	BSF STATUS, RP0
	MOVWF __rem_32_3_00002_arg_a+D'2'
	BCF STATUS, RP0
	MOVF gbl_FCV_FOPE+D'3', W
	BSF STATUS, RP0
	MOVWF __rem_32_3_00002_arg_a+D'3'
	MOVLW 0x64
	MOVWF __rem_32_3_00002_arg_b
	CLRF __rem_32_3_00002_arg_b+D'1'
	CLRF __rem_32_3_00002_arg_b+D'2'
	CLRF __rem_32_3_00002_arg_b+D'3'
	CALL __rem_32_3_00002
	MOVF CompTempVarRet212, W
	MOVWF __div_32_3_00001_arg_a
	MOVF CompTempVarRet212+D'1', W
	MOVWF __div_32_3_00001_arg_a+D'1'
	MOVF CompTempVarRet212+D'2', W
	MOVWF __div_32_3_00001_arg_a+D'2'
	MOVF CompTempVarRet212+D'3', W
	MOVWF __div_32_3_00001_arg_a+D'3'
	MOVLW 0x0A
	MOVWF __div_32_3_00001_arg_b
	CLRF __div_32_3_00001_arg_b+D'1'
	CLRF __div_32_3_00001_arg_b+D'2'
	CLRF __div_32_3_00001_arg_b+D'3'
	CALL __div_32_3_00001
	MOVF CompTempVarRet210, W
	MOVWF gbl_FCV_PERIOD
	MOVLW HIGH(gbl_FCV_RCV+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sSrc+D'1'
	MOVLW LOW(gbl_FCV_RCV+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sSrc
	MOVLW 0x0F
	MOVWF FCI_RIGHTS_00048_arg_iSrc_len
	MOVLW 0x08
	MOVWF FCI_RIGHTS_00048_arg_iCount
	MOVLW HIGH(gbl_FCV_STRING_HOME+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sDst+D'1'
	MOVLW LOW(gbl_FCV_STRING_HOME+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sDst
	MOVLW 0x03
	MOVWF FCI_RIGHTS_00048_arg_iDst_len
	CALL FCI_RIGHTS_00048
	MOVLW HIGH(gbl_FCV_STRING_HOME+D'0')
	MOVWF FCI_STRING_0004F_arg_String+D'1'
	MOVLW LOW(gbl_FCV_STRING_HOME+D'0')
	MOVWF FCI_STRING_0004F_arg_String
	MOVLW 0x03
	MOVWF FCI_STRING_0004F_arg_MSZ_String
	CALL FCI_STRING_0004F
	MOVF CompTempVarRet2063, W
	BCF STATUS, RP0
	MOVWF gbl_FCV_HOME_SCORE
	BSF STATUS, RP0
	MOVF CompTempVarRet2063+D'1', W
	BCF STATUS, RP0
	MOVWF gbl_FCV_HOME_SCORE+D'1'
	BSF STATUS, RP0
	MOVF CompTempVarRet2063+D'2', W
	BCF STATUS, RP0
	MOVWF gbl_FCV_HOME_SCORE+D'2'
	BSF STATUS, RP0
	MOVF CompTempVarRet2063+D'3', W
	BCF STATUS, RP0
	MOVWF gbl_FCV_HOME_SCORE+D'3'
	MOVLW HIGH(gbl_FCV_RCV+D'0')
	BSF STATUS, RP0
	MOVWF FCI_RIGHTS_00048_arg_sSrc+D'1'
	MOVLW LOW(gbl_FCV_RCV+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sSrc
	MOVLW 0x0F
	MOVWF FCI_RIGHTS_00048_arg_iSrc_len
	MOVLW 0x05
	MOVWF FCI_RIGHTS_00048_arg_iCount
	MOVLW HIGH(gbl_FCV_STRING_AWAY+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sDst+D'1'
	MOVLW LOW(gbl_FCV_STRING_AWAY+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sDst
	MOVLW 0x03
	MOVWF FCI_RIGHTS_00048_arg_iDst_len
	CALL FCI_RIGHTS_00048
	MOVLW HIGH(gbl_FCV_STRING_AWAY+D'0')
	MOVWF FCI_STRING_0004F_arg_String+D'1'
	MOVLW LOW(gbl_FCV_STRING_AWAY+D'0')
	MOVWF FCI_STRING_0004F_arg_String
	MOVLW 0x03
	MOVWF FCI_STRING_0004F_arg_MSZ_String
	CALL FCI_STRING_0004F
	MOVF CompTempVarRet2063, W
	BCF STATUS, RP0
	MOVWF gbl_FCV_AWAY_SCORE
	BSF STATUS, RP0
	MOVF CompTempVarRet2063+D'1', W
	BCF STATUS, RP0
	MOVWF gbl_FCV_AWAY_SCORE+D'1'
	BSF STATUS, RP0
	MOVF CompTempVarRet2063+D'2', W
	BCF STATUS, RP0
	MOVWF gbl_FCV_AWAY_SCORE+D'2'
	BSF STATUS, RP0
	MOVF CompTempVarRet2063+D'3', W
	BCF STATUS, RP0
	MOVWF gbl_FCV_AWAY_SCORE+D'3'
	MOVLW HIGH(gbl_FCV_RCV+D'0')
	BSF STATUS, RP0
	MOVWF FCI_RIGHTS_00048_arg_sSrc+D'1'
	MOVLW LOW(gbl_FCV_RCV+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sSrc
	MOVLW 0x0F
	MOVWF FCI_RIGHTS_00048_arg_iSrc_len
	MOVLW 0x02
	MOVWF FCI_RIGHTS_00048_arg_iCount
	MOVLW HIGH(gbl_FCV_END+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sDst+D'1'
	MOVLW LOW(gbl_FCV_END+D'0')
	MOVWF FCI_RIGHTS_00048_arg_sDst
	MOVLW 0x02
	MOVWF FCI_RIGHTS_00048_arg_iDst_len
	CALL FCI_RIGHTS_00048
	BCF STATUS, RP0
	MOVF gbl_FCV_END, W
	XORLW 0x43
	BTFSS STATUS,Z
	GOTO	label104
	MOVF gbl_FCV_END+D'1', W
	XORLW 0x44
	BTFSS STATUS,Z
	GOTO	label104
	MOVF gbl_FCV_AWAY_SCORE, W
	MOVWF gbl_FCV_STORED_AWAY_SCORE
	MOVF gbl_FCV_AWAY_SCORE+D'1', W
	MOVWF gbl_FCV_STORED_AWAY_SCORE+D'1'
	MOVF gbl_FCV_AWAY_SCORE+D'2', W
	MOVWF gbl_FCV_STORED_AWAY_SCORE+D'2'
	MOVF gbl_FCV_AWAY_SCORE+D'3', W
	MOVWF gbl_FCV_STORED_AWAY_SCORE+D'3'
	MOVF gbl_FCV_HOME_SCORE, W
	MOVWF gbl_FCV_STORED_HOME_SCORE
	MOVF gbl_FCV_HOME_SCORE+D'1', W
	MOVWF gbl_FCV_STORED_HOME_SCORE+D'1'
	MOVF gbl_FCV_HOME_SCORE+D'2', W
	MOVWF gbl_FCV_STORED_HOME_SCORE+D'2'
	MOVF gbl_FCV_HOME_SCORE+D'3', W
	MOVWF gbl_FCV_STORED_HOME_SCORE+D'3'
	BSF STATUS, RP0
	MOVF gbl_FCV_HOME_FOUL, W
	MOVWF gbl_FCV_STORED_HOME_FOUL
	MOVF gbl_FCV_AWAY_FOUL, W
	MOVWF gbl_FCV_STORED_AWAY_FOUL
	MOVF gbl_FCV_PERIOD, W
	MOVWF gbl_FCV_STORED_PERIOD
	MOVF gbl_FCV_MIN, W
	MOVWF gbl_FCV_STORED_MIN
	MOVF gbl_FCV_SEC, W
	MOVWF gbl_FCV_STORED_SEC
	GOTO	label105
label104
	MOVF gbl_FCV_STORED_AWAY_SCORE, W
	MOVWF gbl_FCV_AWAY_SCORE
	MOVF gbl_FCV_STORED_AWAY_SCORE+D'1', W
	MOVWF gbl_FCV_AWAY_SCORE+D'1'
	MOVF gbl_FCV_STORED_AWAY_SCORE+D'2', W
	MOVWF gbl_FCV_AWAY_SCORE+D'2'
	MOVF gbl_FCV_STORED_AWAY_SCORE+D'3', W
	MOVWF gbl_FCV_AWAY_SCORE+D'3'
	MOVF gbl_FCV_STORED_HOME_SCORE, W
	MOVWF gbl_FCV_HOME_SCORE
	MOVF gbl_FCV_STORED_HOME_SCORE+D'1', W
	MOVWF gbl_FCV_HOME_SCORE+D'1'
	MOVF gbl_FCV_STORED_HOME_SCORE+D'2', W
	MOVWF gbl_FCV_HOME_SCORE+D'2'
	MOVF gbl_FCV_STORED_HOME_SCORE+D'3', W
	MOVWF gbl_FCV_HOME_SCORE+D'3'
	BSF STATUS, RP0
	MOVF gbl_FCV_STORED_HOME_FOUL, W
	MOVWF gbl_FCV_HOME_FOUL
	MOVF gbl_FCV_STORED_AWAY_FOUL, W
	MOVWF gbl_FCV_AWAY_FOUL
	MOVF gbl_FCV_STORED_PERIOD, W
	MOVWF gbl_FCV_PERIOD
	MOVF gbl_FCV_STORED_MIN, W
	MOVWF gbl_FCV_MIN
	MOVF gbl_FCV_STORED_SEC, W
	MOVWF gbl_FCV_SEC
	GOTO	label100
label105
	BCF STATUS, RP0
	MOVF gbl_FCV_HOME_SCORE, W
	BSF STATUS, RP0
	MOVWF __div_32_3_00001_arg_a
	BCF STATUS, RP0
	MOVF gbl_FCV_HOME_SCORE+D'1', W
	BSF STATUS, RP0
	MOVWF __div_32_3_00001_arg_a+D'1'
	BCF STATUS, RP0
	MOVF gbl_FCV_HOME_SCORE+D'2', W
	BSF STATUS, RP0
	MOVWF __div_32_3_00001_arg_a+D'2'
	BCF STATUS, RP0
	MOVF gbl_FCV_HOME_SCORE+D'3', W
	BSF STATUS, RP0
	MOVWF __div_32_3_00001_arg_a+D'3'
	MOVLW 0x0A
	MOVWF __div_32_3_00001_arg_b
	CLRF __div_32_3_00001_arg_b+D'1'
	CLRF __div_32_3_00001_arg_b+D'2'
	CLRF __div_32_3_00001_arg_b+D'3'
	CALL __div_32_3_00001
	MOVF CompTempVarRet210, W
	MOVWF gbl_FCV_HOME_SCORE_TENS
	BCF STATUS, RP0
	MOVF gbl_FCV_HOME_SCORE, W
	BSF STATUS, RP0
	MOVWF __rem_32_3_00002_arg_a
	BCF STATUS, RP0
	MOVF gbl_FCV_HOME_SCORE+D'1', W
	BSF STATUS, RP0
	MOVWF __rem_32_3_00002_arg_a+D'1'
	BCF STATUS, RP0
	MOVF gbl_FCV_HOME_SCORE+D'2', W
	BSF STATUS, RP0
	MOVWF __rem_32_3_00002_arg_a+D'2'
	BCF STATUS, RP0
	MOVF gbl_FCV_HOME_SCORE+D'3', W
	BSF STATUS, RP0
	MOVWF __rem_32_3_00002_arg_a+D'3'
	MOVLW 0x0A
	MOVWF __rem_32_3_00002_arg_b
	CLRF __rem_32_3_00002_arg_b+D'1'
	CLRF __rem_32_3_00002_arg_b+D'2'
	CLRF __rem_32_3_00002_arg_b+D'3'
	CALL __rem_32_3_00002
	MOVF CompTempVarRet212, W
	MOVWF gbl_FCV_HOME_SCORE_ONES
	BCF STATUS, RP0
	MOVF gbl_FCV_AWAY_SCORE, W
	BSF STATUS, RP0
	MOVWF __div_32_3_00001_arg_a
	BCF STATUS, RP0
	MOVF gbl_FCV_AWAY_SCORE+D'1', W
	BSF STATUS, RP0
	MOVWF __div_32_3_00001_arg_a+D'1'
	BCF STATUS, RP0
	MOVF gbl_FCV_AWAY_SCORE+D'2', W
	BSF STATUS, RP0
	MOVWF __div_32_3_00001_arg_a+D'2'
	BCF STATUS, RP0
	MOVF gbl_FCV_AWAY_SCORE+D'3', W
	BSF STATUS, RP0
	MOVWF __div_32_3_00001_arg_a+D'3'
	MOVLW 0x0A
	MOVWF __div_32_3_00001_arg_b
	CLRF __div_32_3_00001_arg_b+D'1'
	CLRF __div_32_3_00001_arg_b+D'2'
	CLRF __div_32_3_00001_arg_b+D'3'
	CALL __div_32_3_00001
	MOVF CompTempVarRet210, W
	MOVWF gbl_FCV_AWAY_SCORE_TENS
	BCF STATUS, RP0
	MOVF gbl_FCV_AWAY_SCORE, W
	BSF STATUS, RP0
	MOVWF __rem_32_3_00002_arg_a
	BCF STATUS, RP0
	MOVF gbl_FCV_AWAY_SCORE+D'1', W
	BSF STATUS, RP0
	MOVWF __rem_32_3_00002_arg_a+D'1'
	BCF STATUS, RP0
	MOVF gbl_FCV_AWAY_SCORE+D'2', W
	BSF STATUS, RP0
	MOVWF __rem_32_3_00002_arg_a+D'2'
	BCF STATUS, RP0
	MOVF gbl_FCV_AWAY_SCORE+D'3', W
	BSF STATUS, RP0
	MOVWF __rem_32_3_00002_arg_a+D'3'
	MOVLW 0x0A
	MOVWF __rem_32_3_00002_arg_b
	CLRF __rem_32_3_00002_arg_b+D'1'
	CLRF __rem_32_3_00002_arg_b+D'2'
	CLRF __rem_32_3_00002_arg_b+D'3'
	CALL __rem_32_3_00002
	MOVF CompTempVarRet212, W
	MOVWF gbl_FCV_AWAY_SCORE_ONES
	MOVF gbl_FCV_MIN, W
	MOVWF __div_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __div_8_8_00000_arg_b
	CALL __div_8_8_00000
	MOVF CompTempVarRet218, W
	MOVWF gbl_FCV_MIN_TENS
	MOVF gbl_FCV_MIN, W
	MOVWF __rem_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __rem_8_8_00000_arg_b
	CALL __rem_8_8_00000
	MOVF CompTempVarRet220, W
	MOVWF gbl_FCV_MIN_ONES
	MOVF gbl_FCV_SEC, W
	MOVWF __div_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __div_8_8_00000_arg_b
	CALL __div_8_8_00000
	MOVF CompTempVarRet218, W
	MOVWF gbl_FCV_SEC_TENS
	MOVF gbl_FCV_SEC, W
	MOVWF __rem_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __rem_8_8_00000_arg_b
	CALL __rem_8_8_00000
	MOVF CompTempVarRet220, W
	MOVWF gbl_FCV_SEC_ONES
	CALL FCM_regist_00052
	GOTO	label100
; } main function end

	ORG 0x000007ED
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
	CLRF gbl_FCV_DIGIT_FOPE
	CLRF gbl_FCV_STORED_HOME_SCORE
	CLRF gbl_FCV_STORED_HOME_SCORE+D'1'
	CLRF gbl_FCV_STORED_HOME_SCORE+D'2'
	CLRF gbl_FCV_STORED_HOME_SCORE+D'3'
	CLRF gbl_FCV_STORED_SEC
	CLRF gbl_FCV_STORED_MIN
	BSF STATUS, RP0
	CLRF gbl_FCV_BITS_SCORE
	CLRF gbl_FCV_AWAY_SCORE_TENS
	CLRF gbl_FCV_STORED_HOME_FOUL
	CLRF gbl_FCV_HOME_FOUL
	CLRF gbl_FCV_MIN_ONES
	CLRF gbl_FCV_STORED_PERIOD
	BCF STATUS, RP0
	CLRF gbl_FCV_STRING_AWAY
	CLRF gbl_FCV_END
	CLRF gbl_FCV_AWAY_SCORE
	CLRF gbl_FCV_AWAY_SCORE+D'1'
	CLRF gbl_FCV_AWAY_SCORE+D'2'
	CLRF gbl_FCV_AWAY_SCORE+D'3'
	BCF gbl_FCV_DAT_FOPE,1
	BCF gbl_FCV_DAT_TIME,2
	BSF STATUS, RP0
	CLRF gbl_FCV_DIGIT
	BCF STATUS, RP0
	CLRF gbl_FCV_STRING_TIME
	BSF STATUS, RP0
	CLRF gbl_FCV_AWAY_SCORE_ONES
	BCF STATUS, RP0
	CLRF gbl_FCV_STRING_FOPE
	CLRF gbl_FCV_STRING_HOME
	BSF STATUS, RP0
	CLRF gbl_FCV_DIGIT_SCORE
	CLRF gbl_FCV_BITS_FOPE
	CLRF gbl_FCV_BITS_TIME
	CLRF gbl_FCV_MIN
	BCF STATUS, RP0
	CLRF gbl_FCV_STORED_AWAY_SCORE
	CLRF gbl_FCV_STORED_AWAY_SCORE+D'1'
	CLRF gbl_FCV_STORED_AWAY_SCORE+D'2'
	CLRF gbl_FCV_STORED_AWAY_SCORE+D'3'
	BSF STATUS, RP0
	CLRF gbl_FCV_STORED_AWAY_FOUL
	BCF STATUS, RP0
	CLRF gbl_FCV_TIME
	CLRF gbl_FCV_TIME+D'1'
	CLRF gbl_FCV_TIME+D'2'
	CLRF gbl_FCV_TIME+D'3'
	BSF STATUS, RP0
	CLRF gbl_FCV_AWAY_FOUL
	CLRF gbl_FCV_MIN_TENS
	BCF STATUS, RP0
	CLRF gbl_FCV_RCV
	BCF PCLATH,3
	BCF PCLATH,4
	GOTO	main
	ORG 0x0000084B
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
	DW 0x20D2
	DW 0x3FFF
	END
