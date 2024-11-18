;/////////////////////////////////////////////////////////////////////////////////
;// Code Generator: BoostC Compiler - http://www.sourceboost.com
;// Version       : 7.03
;// License Type  : Pro License
;// Limitations   : PIC12,PIC16 max code size:Unlimited, max RAM banks:Unlimited
;/////////////////////////////////////////////////////////////////////////////////

	include "P16F883.inc"
; Heap block 0, size:95 (0x000000A0 - 0x000000FE)
__HEAP_BLOCK0_BANK               EQU	0x00000001
__HEAP_BLOCK0_START_OFFSET       EQU	0x00000020
__HEAP_BLOCK0_END_OFFSET         EQU	0x0000007E
; Heap block 1, size:80 (0x00000120 - 0x0000016F)
__HEAP_BLOCK1_BANK               EQU	0x00000002
__HEAP_BLOCK1_START_OFFSET       EQU	0x00000020
__HEAP_BLOCK1_END_OFFSET         EQU	0x0000006F
; Heap block 2, size:5 (0x0000006B - 0x0000006F)
__HEAP_BLOCK2_BANK               EQU	0x00000000
__HEAP_BLOCK2_START_OFFSET       EQU	0x0000006B
__HEAP_BLOCK2_END_OFFSET         EQU	0x0000006F
; Heap block 3, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK3_BANK               EQU	0x00000000
__HEAP_BLOCK3_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK3_END_OFFSET         EQU	0x00000000
__div_16_1_00003_arg_a           EQU	0x00000060 ; bytes:2
__div_16_1_00003_arg_b           EQU	0x00000062 ; bytes:2
CompTempVarRet214                EQU	0x00000069 ; bytes:2
__div_16_1_00003_1_r             EQU	0x00000066 ; bytes:2
__div_16_1_00003_1_i             EQU	0x00000068 ; bytes:1
__rem_16_1_00004_arg_a           EQU	0x0000005C ; bytes:2
__rem_16_1_00004_arg_b           EQU	0x0000005E ; bytes:2
CompTempVarRet216                EQU	0x00000068 ; bytes:2
__rem_16_1_00004_1_c             EQU	0x00000065 ; bytes:2
__rem_16_1_00004_1_i             EQU	0x00000067 ; bytes:1
gbl_status                       EQU	0x00000003 ; bytes:1
gbl_14_LSR                       EQU	0x00000020 ; bytes:4
gbl_float_detect_tininess        EQU	0x00000041 ; bytes:1
gbl_float_rounding_mode          EQU	0x00000042 ; bytes:1
gbl_float_exception_flags        EQU	0x00000043 ; bytes:1
gbl_15_gbl_aSig                  EQU	0x00000024 ; bytes:4
gbl_15_gbl_bSig                  EQU	0x00000028 ; bytes:4
gbl_15_gbl_zSig                  EQU	0x0000002C ; bytes:4
gbl_15_gbl_aExp                  EQU	0x00000044 ; bytes:1
gbl_15_gbl_bExp                  EQU	0x00000045 ; bytes:1
gbl_15_gbl_zExp                  EQU	0x00000037 ; bytes:2
gbl_15_gbl_aSign                 EQU	0x00000046 ; bytes:1
gbl_15_gbl_bSign                 EQU	0x00000047 ; bytes:1
gbl_15_gbl_zSign                 EQU	0x00000048 ; bytes:1
gbl_15_gbl_zSigZero              EQU	0x00000049 ; bytes:1
gbl_15_gbl_ret                   EQU	0x00000030 ; bytes:4
gbl_indf                         EQU	0x00000000 ; bytes:1
gbl_tmr0                         EQU	0x00000001 ; bytes:1
gbl_pcl                          EQU	0x00000002 ; bytes:1
gbl_fsr                          EQU	0x00000004 ; bytes:1
gbl_porta                        EQU	0x00000005 ; bytes:1
gbl_portb                        EQU	0x00000006 ; bytes:1
gbl_portc                        EQU	0x00000007 ; bytes:1
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
gbl_FCV_RECIEVE                  EQU	0x0000004A ; bytes:1
gbl_FCV_WINDOW                   EQU	0x0000004B ; bytes:1
gbl_FCV_QUE1                     EQU	0x00000039 ; bytes:2
gbl_FCV_DAT                      EQU	0x0000004C ; bit:0
gbl_FCV_QUE2                     EQU	0x0000003B ; bytes:2
gbl_FCV_QUE3                     EQU	0x0000003D ; bytes:2
gbl_FCV_BITS                     EQU	0x0000004D ; bytes:1
gbl_FCV_TENS                     EQU	0x0000004E ; bytes:1
gbl_FCV_WIN                      EQU	0x0000004F ; bytes:1
gbl_FCV_DIGIT                    EQU	0x00000050 ; bytes:1
gbl_FCV_ONES                     EQU	0x00000051 ; bytes:1
gbl_FCV_HUNDREDS                 EQU	0x00000052 ; bytes:1
gbl_FCV_IHAP                     EQU	0x0000003F ; bytes:2
gbl_FCLV_LOOP1                   EQU	0x00000053 ; bytes:1
gbl_FCLV_LOOP2                   EQU	0x00000054 ; bytes:1
gbl_FCLV_LOOP3                   EQU	0x00000055 ; bytes:1
gbl_FCLV_LOOP4                   EQU	0x00000056 ; bytes:1
gbl_FCLV_LOOP5                   EQU	0x00000057 ; bytes:1
gbl_FCLV_LOOP6                   EQU	0x00000058 ; bytes:1
gbl_FCLV_LOOP7                   EQU	0x00000059 ; bytes:1
gbl_FCLV_LOOP8                   EQU	0x0000005A ; bytes:1
CompTempVar2188                  EQU	0x0000005C ; bytes:1
CompTempVar2189                  EQU	0x0000005D ; bytes:1
CompTempVar2190                  EQU	0x0000005C ; bytes:1
CompTempVar2191                  EQU	0x0000005C ; bytes:1
CompTempVar2193                  EQU	0x0000005C ; bytes:1
CompTempVar2195                  EQU	0x0000005C ; bytes:1
CompTempVar2197                  EQU	0x00000064 ; bytes:1
CompTempVar2199                  EQU	0x00000065 ; bytes:1
CompTempVar2202                  EQU	0x0000005C ; bytes:1
CompTempVar2204                  EQU	0x00000064 ; bytes:1
CompTempVar2206                  EQU	0x00000065 ; bytes:1
CompTempVar2209                  EQU	0x0000005C ; bytes:1
CompTempVar2211                  EQU	0x00000064 ; bytes:1
CompTempVar2213                  EQU	0x00000065 ; bytes:1
CompTempVarRet2227               EQU	0x0000005D ; bytes:2
FC_CAL_PWM_0005D_arg_duty        EQU	0x0000005D ; bytes:1
FC_CAL_PWM_0005E_arg_period      EQU	0x0000005C ; bytes:1
FC_CAL_PWM_0005E_arg_prescaler   EQU	0x0000005D ; bytes:2
FCD_PWM0_S_00059_arg_nDuty       EQU	0x0000005C ; bytes:1
FC_CAL_UAR_00065_arg_nTimeout    EQU	0x0000005D ; bytes:1
CompTempVarRet2237               EQU	0x00000064 ; bytes:2
FC_CAL_UAR_00065_1_retVal        EQU	0x0000005E ; bytes:1
FC_CAL_UAR_00065_1_delay1        EQU	0x0000005F ; bytes:1
FC_CAL_UAR_00065_1_regcheck      EQU	0x00000060 ; bytes:1
FC_CAL_UAR_00065_1_bWaitForever  EQU	0x00000061 ; bytes:1
FC_CAL_UAR_00065_1_rxStatus      EQU	0x00000062 ; bytes:1
FC_CAL_UAR_00065_1_dummy         EQU	0x00000063 ; bytes:1
FCD_RS2320_00057_arg_nTimeout    EQU	0x0000005C ; bytes:1
CompTempVar2246                  EQU	0x0000005B ; bytes:1
delay_us_00000_arg_del           EQU	0x00000064 ; bytes:1
delay_ms_00000_arg_del           EQU	0x0000005C ; bytes:1
Int1Context                      EQU	0x0000007F ; bytes:1
Int1BContext                     EQU	0x00000034 ; bytes:3
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
FC_CAL_PWM_0005E
; { FC_CAL_PWM_Change_Period_1 ; function begin
	MOVF FC_CAL_PWM_0005E_arg_period, W
	BSF STATUS, RP0
	MOVWF gbl_pr2
	MOVLW 0x01
	BCF STATUS, RP0
	XORWF FC_CAL_PWM_0005E_arg_prescaler, W
	BTFSC STATUS,Z
	MOVF FC_CAL_PWM_0005E_arg_prescaler+D'1', W
	BTFSC STATUS,Z
	GOTO	label4
	MOVLW 0x04
	XORWF FC_CAL_PWM_0005E_arg_prescaler, W
	BTFSC STATUS,Z
	MOVF FC_CAL_PWM_0005E_arg_prescaler+D'1', W
	BTFSC STATUS,Z
	GOTO	label5
	MOVLW 0x10
	XORWF FC_CAL_PWM_0005E_arg_prescaler, W
	BTFSC STATUS,Z
	MOVF FC_CAL_PWM_0005E_arg_prescaler+D'1', W
	BTFSC STATUS,Z
	GOTO	label6
	RETURN
label4
	MOVLW 0x04
	MOVWF gbl_t2con
	RETURN
label5
	MOVLW 0x05
	MOVWF gbl_t2con
	RETURN
label6
	MOVLW 0x06
	MOVWF gbl_t2con
	RETURN
; } FC_CAL_PWM_Change_Period_1 function end

	ORG 0x00000061
FC_CAL_PWM_0005D
; { FC_CAL_PWM_Set_Duty_8Bit_1 ; function begin
	MOVF FC_CAL_PWM_0005D_arg_duty, W
	MOVWF gbl_ccpr1l
	RETURN
; } FC_CAL_PWM_Set_Duty_8Bit_1 function end

	ORG 0x00000064
FC_CAL_PWM_0005C
; { FC_CAL_PWM_Disable_Channel_1 ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	CLRF gbl_ccp1con
	BSF STATUS, RP0
	BSF gbl_trisc,2
	RETURN
; } FC_CAL_PWM_Disable_Channel_1 function end

	ORG 0x0000006A
FC_CAL_PWM_0005B
; { FC_CAL_PWM_Enable_Channel_1 ; function begin
	BSF STATUS, RP0
	BCF STATUS, RP1
	BCF gbl_trisc,2
	BCF STATUS, RP0
	BCF gbl_portc,2
	MOVLW 0x0C
	MOVWF gbl_ccp1con
	RETURN
; } FC_CAL_PWM_Enable_Channel_1 function end

	ORG 0x00000072
__rem_16_1_00004
; { __rem_16_16 ; function begin
	CLRF CompTempVarRet216
	CLRF CompTempVarRet216+D'1'
	CLRF __rem_16_1_00004_1_c
	CLRF __rem_16_1_00004_1_c+D'1'
	CLRF __rem_16_1_00004_1_i
label7
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
	GOTO	label8
	MOVF __rem_16_1_00004_arg_b, W
	SUBWF CompTempVarRet216, W
label8
	BTFSS STATUS,C
	GOTO	label9
	MOVF __rem_16_1_00004_arg_b, W
	SUBWF CompTempVarRet216, F
	MOVF __rem_16_1_00004_arg_b+D'1', W
	BTFSS STATUS,C
	DECF CompTempVarRet216+D'1', F
	SUBWF CompTempVarRet216+D'1', F
	BSF __rem_16_1_00004_1_c,0
label9
	INCF __rem_16_1_00004_1_i, F
	GOTO	label7
; } __rem_16_16 function end

	ORG 0x00000091
__div_16_1_00003
; { __div_16_16 ; function begin
	CLRF __div_16_1_00003_1_r
	CLRF __div_16_1_00003_1_r+D'1'
	CLRF CompTempVarRet214
	CLRF CompTempVarRet214+D'1'
	CLRF __div_16_1_00003_1_i
label10
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
	GOTO	label11
	MOVF __div_16_1_00003_arg_b, W
	SUBWF __div_16_1_00003_1_r, W
label11
	BTFSS STATUS,C
	GOTO	label12
	MOVF __div_16_1_00003_arg_b, W
	SUBWF __div_16_1_00003_1_r, F
	MOVF __div_16_1_00003_arg_b+D'1', W
	BTFSS STATUS,C
	DECF __div_16_1_00003_1_r+D'1', F
	SUBWF __div_16_1_00003_1_r+D'1', F
	BSF CompTempVarRet214,0
label12
	INCF __div_16_1_00003_1_i, F
	GOTO	label10
; } __div_16_16 function end

	ORG 0x000000B0
FC_CAL_UAR_00065
; { FC_CAL_UART_Receive_1 ; function begin
	MOVLW 0xFF
	MOVWF FC_CAL_UAR_00065_1_retVal
	CLRF FC_CAL_UAR_00065_1_delay1
	CLRF FC_CAL_UAR_00065_1_regcheck
	CLRF FC_CAL_UAR_00065_1_bWaitForever
	CLRF FC_CAL_UAR_00065_1_rxStatus
	CLRF FC_CAL_UAR_00065_1_dummy
	INCF FC_CAL_UAR_00065_arg_nTimeout, W
	BTFSS STATUS,Z
	GOTO	label13
	MOVLW 0x01
	MOVWF FC_CAL_UAR_00065_1_bWaitForever
label13
	MOVF FC_CAL_UAR_00065_1_rxStatus, F
	BTFSS STATUS,Z
	GOTO	label16
	MOVF FC_CAL_UAR_00065_1_bWaitForever, F
	BTFSS STATUS,Z
	GOTO	label15
	MOVF FC_CAL_UAR_00065_arg_nTimeout, F
	BTFSS STATUS,Z
	GOTO	label14
	MOVLW 0x01
	MOVWF FC_CAL_UAR_00065_1_rxStatus
	GOTO	label15
label14
	MOVLW 0x0A
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	INCF FC_CAL_UAR_00065_1_delay1, W
	MOVWF FC_CAL_UAR_00065_1_delay1
	MOVF FC_CAL_UAR_00065_1_delay1, W
	XORLW 0x64
	BTFSS STATUS,Z
	GOTO	label15
	DECF FC_CAL_UAR_00065_arg_nTimeout, W
	MOVWF FC_CAL_UAR_00065_arg_nTimeout
	CLRWDT
	CLRF FC_CAL_UAR_00065_1_delay1
label15
	MOVLW 0x20
	ANDWF gbl_pir1, W
	MOVWF FC_CAL_UAR_00065_1_regcheck
	MOVF FC_CAL_UAR_00065_1_regcheck, F
	BTFSC STATUS,Z
	GOTO	label13
	MOVLW 0x02
	MOVWF FC_CAL_UAR_00065_1_rxStatus
	GOTO	label13
label16
	MOVF FC_CAL_UAR_00065_1_rxStatus, W
	XORLW 0x02
	BTFSS STATUS,Z
	GOTO	label19
	MOVLW 0x04
	ANDWF gbl_rcsta, W
	MOVWF FC_CAL_UAR_00065_1_regcheck
	MOVF FC_CAL_UAR_00065_1_regcheck, F
	BTFSC STATUS,Z
	GOTO	label17
	MOVF gbl_rcreg, W
	MOVWF FC_CAL_UAR_00065_1_dummy
	GOTO	label19
label17
	MOVLW 0x02
	ANDWF gbl_rcsta, W
	MOVWF FC_CAL_UAR_00065_1_regcheck
	MOVF FC_CAL_UAR_00065_1_regcheck, F
	BTFSC STATUS,Z
	GOTO	label18
	BCF gbl_rcsta,4
	BSF gbl_rcsta,4
	GOTO	label19
label18
	CLRF FC_CAL_UAR_00065_1_retVal
	MOVF gbl_rcreg, W
	IORWF FC_CAL_UAR_00065_1_retVal, W
	MOVWF FC_CAL_UAR_00065_1_retVal
label19
	MOVF FC_CAL_UAR_00065_1_retVal, W
	MOVWF CompTempVarRet2237
	CLRF CompTempVarRet2237+D'1'
	RETURN
; } FC_CAL_UART_Receive_1 function end

	ORG 0x000000FC
FCM_displa_00052
; { FCM_display ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	CLRF gbl_FCLV_LOOP2
label20
	MOVLW 0x08
	SUBWF gbl_FCLV_LOOP2, W
	BTFSC STATUS,C
	GOTO	label23
	MOVLW 0x01
	ANDWF gbl_FCV_BITS, W
	MOVWF CompTempVar2188
	CLRF CompTempVar2189
	MOVF CompTempVar2188, F
	BTFSS STATUS,Z
	BSF CompTempVar2189,0
	BCF gbl_FCV_DAT,0
	MOVF CompTempVar2189, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DAT,0
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisa, W
	MOVWF gbl_trisa
	BCF STATUS, RP0
	BTFSS gbl_FCV_DAT,0
	GOTO	label21
	MOVLW 0xFE
	ANDWF gbl_porta, W
	MOVWF CompTempVar2190
	MOVLW 0x01
	IORWF CompTempVar2190, W
	MOVWF gbl_porta
	GOTO	label22
label21
	MOVLW 0xFE
	ANDWF gbl_porta, W
	MOVWF gbl_porta
label22
	MOVLW 0xDF
	BSF STATUS, RP0
	ANDWF gbl_trisb, W
	MOVWF gbl_trisb
	MOVLW 0xDF
	BCF STATUS, RP0
	ANDWF gbl_portb, W
	MOVWF CompTempVar2191
	MOVLW 0x20
	IORWF CompTempVar2191, W
	MOVWF gbl_portb
	MOVLW 0x0A
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	MOVLW 0xDF
	BSF STATUS, RP0
	ANDWF gbl_trisb, W
	MOVWF gbl_trisb
	MOVLW 0xDF
	BCF STATUS, RP0
	ANDWF gbl_portb, W
	MOVWF gbl_portb
	MOVLW 0x0A
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	MOVF gbl_FCV_BITS, F
	BCF STATUS,C
	RRF gbl_FCV_BITS, F
	INCF gbl_FCLV_LOOP2, F
	GOTO	label20
label23
	MOVLW 0xEF
	BSF STATUS, RP0
	ANDWF gbl_trisb, W
	MOVWF gbl_trisb
	MOVLW 0xEF
	BCF STATUS, RP0
	ANDWF gbl_portb, W
	MOVWF CompTempVar2193
	MOVLW 0x10
	IORWF CompTempVar2193, W
	MOVWF gbl_portb
	MOVLW 0x0A
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	MOVLW 0xEF
	BSF STATUS, RP0
	ANDWF gbl_trisb, W
	MOVWF gbl_trisb
	MOVLW 0xEF
	BCF STATUS, RP0
	ANDWF gbl_portb, W
	MOVWF gbl_portb
	MOVLW 0x0A
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	RETURN
; } FCM_display function end

	ORG 0x00000157
FCM_databa_00051
; { FCM_databank ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVF gbl_FCV_DIGIT, W
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label24
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label25
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label26
	XORLW 0x07
	BTFSC STATUS,Z
	GOTO	label27
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label28
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label29
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label30
	XORLW 0x0F
	BTFSC STATUS,Z
	GOTO	label31
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label32
	XORLW 0x09
	BTFSC STATUS,Z
	GOTO	label33
	RETURN
label24
	MOVLW 0x9F
	MOVWF gbl_FCV_BITS
	RETURN
label25
	MOVLW 0x24
	MOVWF gbl_FCV_BITS
	RETURN
label26
	MOVLW 0x0D
	MOVWF gbl_FCV_BITS
	RETURN
label27
	MOVLW 0x99
	MOVWF gbl_FCV_BITS
	RETURN
label28
	MOVLW 0x49
	MOVWF gbl_FCV_BITS
	RETURN
label29
	MOVLW 0x41
	MOVWF gbl_FCV_BITS
	RETURN
label30
	MOVLW 0x1F
	MOVWF gbl_FCV_BITS
	RETURN
label31
	MOVLW 0x01
	MOVWF gbl_FCV_BITS
	RETURN
label32
	MOVLW 0x09
	MOVWF gbl_FCV_BITS
	RETURN
label33
	MOVLW 0x03
	MOVWF gbl_FCV_BITS
	RETURN
; } FCM_databank function end

	ORG 0x00000197
FCD_PWM0_S_00059
; { FCD_PWM0_SetDutyCycle ; function begin
	MOVF FCD_PWM0_S_00059_arg_nDuty, W
	MOVWF FC_CAL_PWM_0005D_arg_duty
	CALL FC_CAL_PWM_0005D
	RETURN
; } FCD_PWM0_SetDutyCycle function end

	ORG 0x0000019B
FCD_PWM0_E_00058
; { FCD_PWM0_Enable ; function begin
	MOVLW 0x50
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF FC_CAL_PWM_0005E_arg_period
	MOVLW 0x10
	MOVWF FC_CAL_PWM_0005E_arg_prescaler
	CLRF FC_CAL_PWM_0005E_arg_prescaler+D'1'
	CALL FC_CAL_PWM_0005E
	CALL FC_CAL_PWM_0005B
	RETURN
; } FCD_PWM0_Enable function end

	ORG 0x000001A5
FCD_PWM0_D_0005A
; { FCD_PWM0_Disable ; function begin
	CALL FC_CAL_PWM_0005C
	RETURN
; } FCD_PWM0_Disable function end

	ORG 0x000001A7
FCM_reset_00000
; { FCM_reset ; function begin
	MOVLW 0xFF
	BCF STATUS, RP0
	BCF STATUS, RP1
	XORWF gbl_FCV_QUE1+D'1', W
	BTFSS STATUS,Z
	GOTO	label34
	MOVF gbl_FCV_QUE1, W
	XORLW 0xFF
	BTFSC STATUS,Z
	GOTO	label35
label34
	MOVF gbl_FCV_QUE1, W
	XORLW 0xE8
	BTFSS gbl_FCV_QUE1+D'1',7
	MOVLW 0x03
	BTFSC STATUS,Z
	XORWF gbl_FCV_QUE1+D'1', W
	BTFSC STATUS,Z
	GOTO	label36
	GOTO	label38
label35
	MOVLW 0xE7
	MOVWF gbl_FCV_QUE1
	MOVLW 0x03
	MOVWF gbl_FCV_QUE1+D'1'
	GOTO	label38
label36
	CLRF gbl_FCV_QUE1
	CLRF gbl_FCV_QUE1+D'1'
	CLRF gbl_FCLV_LOOP6
label37
	MOVLW 0x0A
	SUBWF gbl_FCLV_LOOP6, W
	BTFSC STATUS,C
	GOTO	label38
	CALL FCD_PWM0_E_00058
	MOVLW 0x4B
	MOVWF FCD_PWM0_S_00059_arg_nDuty
	CALL FCD_PWM0_S_00059
	MOVLW 0x96
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CALL FCD_PWM0_D_0005A
	MOVLW 0x96
	BCF STATUS, RP0
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	INCF gbl_FCLV_LOOP6, F
	GOTO	label37
label38
	MOVLW 0xFF
	XORWF gbl_FCV_QUE2+D'1', W
	BTFSS STATUS,Z
	GOTO	label39
	MOVF gbl_FCV_QUE2, W
	XORLW 0xFF
	BTFSC STATUS,Z
	GOTO	label40
label39
	MOVF gbl_FCV_QUE2, W
	XORLW 0xE8
	BTFSS gbl_FCV_QUE2+D'1',7
	MOVLW 0x03
	BTFSC STATUS,Z
	XORWF gbl_FCV_QUE2+D'1', W
	BTFSC STATUS,Z
	GOTO	label41
	GOTO	label43
label40
	MOVLW 0xE7
	MOVWF gbl_FCV_QUE2
	MOVLW 0x03
	MOVWF gbl_FCV_QUE2+D'1'
	GOTO	label43
label41
	CLRF gbl_FCV_QUE2
	CLRF gbl_FCV_QUE2+D'1'
	CLRF gbl_FCLV_LOOP7
label42
	MOVLW 0x0A
	SUBWF gbl_FCLV_LOOP7, W
	BTFSC STATUS,C
	GOTO	label43
	CALL FCD_PWM0_E_00058
	MOVLW 0x4B
	MOVWF FCD_PWM0_S_00059_arg_nDuty
	CALL FCD_PWM0_S_00059
	MOVLW 0x96
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CALL FCD_PWM0_D_0005A
	MOVLW 0x96
	BCF STATUS, RP0
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	INCF gbl_FCLV_LOOP7, F
	GOTO	label42
label43
	MOVLW 0xFF
	XORWF gbl_FCV_QUE3+D'1', W
	BTFSS STATUS,Z
	GOTO	label44
	MOVF gbl_FCV_QUE3, W
	XORLW 0xFF
	BTFSC STATUS,Z
	GOTO	label45
label44
	MOVF gbl_FCV_QUE3, W
	XORLW 0xE8
	BTFSS gbl_FCV_QUE3+D'1',7
	MOVLW 0x03
	BTFSC STATUS,Z
	XORWF gbl_FCV_QUE3+D'1', W
	BTFSC STATUS,Z
	GOTO	label46
	RETURN
label45
	MOVLW 0xE7
	MOVWF gbl_FCV_QUE3
	MOVLW 0x03
	MOVWF gbl_FCV_QUE3+D'1'
	RETURN
label46
	CLRF gbl_FCV_QUE3
	CLRF gbl_FCV_QUE3+D'1'
	CLRF gbl_FCLV_LOOP8
label47
	MOVLW 0x0A
	SUBWF gbl_FCLV_LOOP8, W
	BTFSC STATUS,C
	RETURN
	CALL FCD_PWM0_E_00058
	MOVLW 0x4B
	MOVWF FCD_PWM0_S_00059_arg_nDuty
	CALL FCD_PWM0_S_00059
	MOVLW 0x96
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CALL FCD_PWM0_D_0005A
	MOVLW 0x96
	BCF STATUS, RP0
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	INCF gbl_FCLV_LOOP8, F
	GOTO	label47
; } FCM_reset function end

	ORG 0x0000022A
FCM_displa_00055
; { FCM_display_win3 ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	CLRF CompTempVar2209
	MOVF gbl_FCV_QUE3, W
	MOVWF __div_16_1_00003_arg_a
	MOVF gbl_FCV_QUE3+D'1', W
	MOVWF __div_16_1_00003_arg_a+D'1'
	BTFSS gbl_FCV_QUE3+D'1',7
	GOTO	label48
	COMF __div_16_1_00003_arg_a, F
	COMF __div_16_1_00003_arg_a+D'1', F
	INCF __div_16_1_00003_arg_a, F
	BTFSC STATUS,Z
	INCF __div_16_1_00003_arg_a+D'1', F
	INCF CompTempVar2209, F
label48
	MOVLW 0x64
	MOVWF __div_16_1_00003_arg_b
	CLRF __div_16_1_00003_arg_b+D'1'
	CALL __div_16_1_00003
	MOVF CompTempVarRet214, W
	MOVWF gbl_FCV_HUNDREDS
	BTFSS CompTempVar2209,0
	GOTO	label49
	COMF gbl_FCV_HUNDREDS, F
	INCF gbl_FCV_HUNDREDS, F
label49
	MOVF gbl_FCV_QUE3, W
	MOVWF __rem_16_1_00004_arg_a
	MOVF gbl_FCV_QUE3+D'1', W
	MOVWF __rem_16_1_00004_arg_a+D'1'
	BTFSS gbl_FCV_QUE3+D'1',7
	GOTO	label50
	COMF __rem_16_1_00004_arg_a, F
	COMF __rem_16_1_00004_arg_a+D'1', F
	INCF __rem_16_1_00004_arg_a, F
	BTFSC STATUS,Z
	INCF __rem_16_1_00004_arg_a+D'1', F
label50
	MOVLW 0x64
	MOVWF __rem_16_1_00004_arg_b
	CLRF __rem_16_1_00004_arg_b+D'1'
	CALL __rem_16_1_00004
	MOVF CompTempVarRet216, W
	MOVWF __div_16_1_00003_arg_a
	MOVF CompTempVarRet216+D'1', W
	MOVWF CompTempVar2211
	BTFSS gbl_FCV_QUE3+D'1',7
	GOTO	label51
	COMF __div_16_1_00003_arg_a, F
	COMF CompTempVar2211, F
	INCF __div_16_1_00003_arg_a, F
	BTFSC STATUS,Z
	INCF CompTempVar2211, F
label51
	CLRF CompTempVar2213
	MOVF CompTempVar2211, W
	MOVWF __div_16_1_00003_arg_a+D'1'
	BTFSS CompTempVar2211,7
	GOTO	label52
	COMF __div_16_1_00003_arg_a, F
	COMF __div_16_1_00003_arg_a+D'1', F
	INCF __div_16_1_00003_arg_a, F
	BTFSC STATUS,Z
	INCF __div_16_1_00003_arg_a+D'1', F
	INCF CompTempVar2213, F
label52
	MOVLW 0x0A
	MOVWF __div_16_1_00003_arg_b
	CLRF __div_16_1_00003_arg_b+D'1'
	CALL __div_16_1_00003
	MOVF CompTempVarRet214, W
	MOVWF gbl_FCV_TENS
	BTFSS CompTempVar2213,0
	GOTO	label53
	COMF gbl_FCV_TENS, F
	INCF gbl_FCV_TENS, F
label53
	MOVF gbl_FCV_QUE3, W
	MOVWF __rem_16_1_00004_arg_a
	MOVF gbl_FCV_QUE3+D'1', W
	MOVWF __rem_16_1_00004_arg_a+D'1'
	BTFSS gbl_FCV_QUE3+D'1',7
	GOTO	label54
	COMF __rem_16_1_00004_arg_a, F
	COMF __rem_16_1_00004_arg_a+D'1', F
	INCF __rem_16_1_00004_arg_a, F
	BTFSC STATUS,Z
	INCF __rem_16_1_00004_arg_a+D'1', F
label54
	MOVLW 0x0A
	MOVWF __rem_16_1_00004_arg_b
	CLRF __rem_16_1_00004_arg_b+D'1'
	CALL __rem_16_1_00004
	MOVF CompTempVarRet216, W
	MOVWF gbl_FCV_ONES
	BTFSS gbl_FCV_QUE3+D'1',7
	GOTO	label55
	COMF gbl_FCV_ONES, F
	INCF gbl_FCV_ONES, F
label55
	MOVLW 0x03
	MOVWF gbl_FCV_WINDOW
	MOVF gbl_FCV_WINDOW, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_databa_00051
	CALL FCM_displa_00052
	MOVF gbl_FCV_ONES, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_databa_00051
	CALL FCM_displa_00052
	MOVF gbl_FCV_TENS, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_databa_00051
	CALL FCM_displa_00052
	MOVF gbl_FCV_HUNDREDS, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_databa_00051
	CALL FCM_displa_00052
	RETURN
; } FCM_display_win3 function end

	ORG 0x0000029A
FCM_displa_00054
; { FCM_display_win2 ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	CLRF CompTempVar2202
	MOVF gbl_FCV_QUE2, W
	MOVWF __div_16_1_00003_arg_a
	MOVF gbl_FCV_QUE2+D'1', W
	MOVWF __div_16_1_00003_arg_a+D'1'
	BTFSS gbl_FCV_QUE2+D'1',7
	GOTO	label56
	COMF __div_16_1_00003_arg_a, F
	COMF __div_16_1_00003_arg_a+D'1', F
	INCF __div_16_1_00003_arg_a, F
	BTFSC STATUS,Z
	INCF __div_16_1_00003_arg_a+D'1', F
	INCF CompTempVar2202, F
label56
	MOVLW 0x64
	MOVWF __div_16_1_00003_arg_b
	CLRF __div_16_1_00003_arg_b+D'1'
	CALL __div_16_1_00003
	MOVF CompTempVarRet214, W
	MOVWF gbl_FCV_HUNDREDS
	BTFSS CompTempVar2202,0
	GOTO	label57
	COMF gbl_FCV_HUNDREDS, F
	INCF gbl_FCV_HUNDREDS, F
label57
	MOVF gbl_FCV_QUE2, W
	MOVWF __rem_16_1_00004_arg_a
	MOVF gbl_FCV_QUE2+D'1', W
	MOVWF __rem_16_1_00004_arg_a+D'1'
	BTFSS gbl_FCV_QUE2+D'1',7
	GOTO	label58
	COMF __rem_16_1_00004_arg_a, F
	COMF __rem_16_1_00004_arg_a+D'1', F
	INCF __rem_16_1_00004_arg_a, F
	BTFSC STATUS,Z
	INCF __rem_16_1_00004_arg_a+D'1', F
label58
	MOVLW 0x64
	MOVWF __rem_16_1_00004_arg_b
	CLRF __rem_16_1_00004_arg_b+D'1'
	CALL __rem_16_1_00004
	MOVF CompTempVarRet216, W
	MOVWF __div_16_1_00003_arg_a
	MOVF CompTempVarRet216+D'1', W
	MOVWF CompTempVar2204
	BTFSS gbl_FCV_QUE2+D'1',7
	GOTO	label59
	COMF __div_16_1_00003_arg_a, F
	COMF CompTempVar2204, F
	INCF __div_16_1_00003_arg_a, F
	BTFSC STATUS,Z
	INCF CompTempVar2204, F
label59
	CLRF CompTempVar2206
	MOVF CompTempVar2204, W
	MOVWF __div_16_1_00003_arg_a+D'1'
	BTFSS CompTempVar2204,7
	GOTO	label60
	COMF __div_16_1_00003_arg_a, F
	COMF __div_16_1_00003_arg_a+D'1', F
	INCF __div_16_1_00003_arg_a, F
	BTFSC STATUS,Z
	INCF __div_16_1_00003_arg_a+D'1', F
	INCF CompTempVar2206, F
label60
	MOVLW 0x0A
	MOVWF __div_16_1_00003_arg_b
	CLRF __div_16_1_00003_arg_b+D'1'
	CALL __div_16_1_00003
	MOVF CompTempVarRet214, W
	MOVWF gbl_FCV_TENS
	BTFSS CompTempVar2206,0
	GOTO	label61
	COMF gbl_FCV_TENS, F
	INCF gbl_FCV_TENS, F
label61
	MOVF gbl_FCV_QUE2, W
	MOVWF __rem_16_1_00004_arg_a
	MOVF gbl_FCV_QUE2+D'1', W
	MOVWF __rem_16_1_00004_arg_a+D'1'
	BTFSS gbl_FCV_QUE2+D'1',7
	GOTO	label62
	COMF __rem_16_1_00004_arg_a, F
	COMF __rem_16_1_00004_arg_a+D'1', F
	INCF __rem_16_1_00004_arg_a, F
	BTFSC STATUS,Z
	INCF __rem_16_1_00004_arg_a+D'1', F
label62
	MOVLW 0x0A
	MOVWF __rem_16_1_00004_arg_b
	CLRF __rem_16_1_00004_arg_b+D'1'
	CALL __rem_16_1_00004
	MOVF CompTempVarRet216, W
	MOVWF gbl_FCV_ONES
	BTFSS gbl_FCV_QUE2+D'1',7
	GOTO	label63
	COMF gbl_FCV_ONES, F
	INCF gbl_FCV_ONES, F
label63
	MOVLW 0x02
	MOVWF gbl_FCV_WINDOW
	MOVF gbl_FCV_WINDOW, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_databa_00051
	CALL FCM_displa_00052
	MOVF gbl_FCV_ONES, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_databa_00051
	CALL FCM_displa_00052
	MOVF gbl_FCV_TENS, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_databa_00051
	CALL FCM_displa_00052
	MOVF gbl_FCV_HUNDREDS, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_databa_00051
	CALL FCM_displa_00052
	RETURN
; } FCM_display_win2 function end

	ORG 0x0000030A
FCM_displa_00053
; { FCM_display_win1 ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	CLRF CompTempVar2195
	MOVF gbl_FCV_QUE1, W
	MOVWF __div_16_1_00003_arg_a
	MOVF gbl_FCV_QUE1+D'1', W
	MOVWF __div_16_1_00003_arg_a+D'1'
	BTFSS gbl_FCV_QUE1+D'1',7
	GOTO	label64
	COMF __div_16_1_00003_arg_a, F
	COMF __div_16_1_00003_arg_a+D'1', F
	INCF __div_16_1_00003_arg_a, F
	BTFSC STATUS,Z
	INCF __div_16_1_00003_arg_a+D'1', F
	INCF CompTempVar2195, F
label64
	MOVLW 0x64
	MOVWF __div_16_1_00003_arg_b
	CLRF __div_16_1_00003_arg_b+D'1'
	CALL __div_16_1_00003
	MOVF CompTempVarRet214, W
	MOVWF gbl_FCV_HUNDREDS
	BTFSS CompTempVar2195,0
	GOTO	label65
	COMF gbl_FCV_HUNDREDS, F
	INCF gbl_FCV_HUNDREDS, F
label65
	MOVF gbl_FCV_QUE1, W
	MOVWF __rem_16_1_00004_arg_a
	MOVF gbl_FCV_QUE1+D'1', W
	MOVWF __rem_16_1_00004_arg_a+D'1'
	BTFSS gbl_FCV_QUE1+D'1',7
	GOTO	label66
	COMF __rem_16_1_00004_arg_a, F
	COMF __rem_16_1_00004_arg_a+D'1', F
	INCF __rem_16_1_00004_arg_a, F
	BTFSC STATUS,Z
	INCF __rem_16_1_00004_arg_a+D'1', F
label66
	MOVLW 0x64
	MOVWF __rem_16_1_00004_arg_b
	CLRF __rem_16_1_00004_arg_b+D'1'
	CALL __rem_16_1_00004
	MOVF CompTempVarRet216, W
	MOVWF __div_16_1_00003_arg_a
	MOVF CompTempVarRet216+D'1', W
	MOVWF CompTempVar2197
	BTFSS gbl_FCV_QUE1+D'1',7
	GOTO	label67
	COMF __div_16_1_00003_arg_a, F
	COMF CompTempVar2197, F
	INCF __div_16_1_00003_arg_a, F
	BTFSC STATUS,Z
	INCF CompTempVar2197, F
label67
	CLRF CompTempVar2199
	MOVF CompTempVar2197, W
	MOVWF __div_16_1_00003_arg_a+D'1'
	BTFSS CompTempVar2197,7
	GOTO	label68
	COMF __div_16_1_00003_arg_a, F
	COMF __div_16_1_00003_arg_a+D'1', F
	INCF __div_16_1_00003_arg_a, F
	BTFSC STATUS,Z
	INCF __div_16_1_00003_arg_a+D'1', F
	INCF CompTempVar2199, F
label68
	MOVLW 0x0A
	MOVWF __div_16_1_00003_arg_b
	CLRF __div_16_1_00003_arg_b+D'1'
	CALL __div_16_1_00003
	MOVF CompTempVarRet214, W
	MOVWF gbl_FCV_TENS
	BTFSS CompTempVar2199,0
	GOTO	label69
	COMF gbl_FCV_TENS, F
	INCF gbl_FCV_TENS, F
label69
	MOVF gbl_FCV_QUE1, W
	MOVWF __rem_16_1_00004_arg_a
	MOVF gbl_FCV_QUE1+D'1', W
	MOVWF __rem_16_1_00004_arg_a+D'1'
	BTFSS gbl_FCV_QUE1+D'1',7
	GOTO	label70
	COMF __rem_16_1_00004_arg_a, F
	COMF __rem_16_1_00004_arg_a+D'1', F
	INCF __rem_16_1_00004_arg_a, F
	BTFSC STATUS,Z
	INCF __rem_16_1_00004_arg_a+D'1', F
label70
	MOVLW 0x0A
	MOVWF __rem_16_1_00004_arg_b
	CLRF __rem_16_1_00004_arg_b+D'1'
	CALL __rem_16_1_00004
	MOVF CompTempVarRet216, W
	MOVWF gbl_FCV_ONES
	BTFSS gbl_FCV_QUE1+D'1',7
	GOTO	label71
	COMF gbl_FCV_ONES, F
	INCF gbl_FCV_ONES, F
label71
	MOVLW 0x01
	MOVWF gbl_FCV_WINDOW
	MOVF gbl_FCV_WINDOW, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_databa_00051
	CALL FCM_displa_00052
	MOVF gbl_FCV_ONES, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_databa_00051
	CALL FCM_displa_00052
	MOVF gbl_FCV_TENS, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_databa_00051
	CALL FCM_displa_00052
	MOVF gbl_FCV_HUNDREDS, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_databa_00051
	CALL FCM_displa_00052
	RETURN
; } FCM_display_win1 function end

	ORG 0x0000037A
FCD_RS2320_00057
; { FCD_RS2320_ReceiveRS232Char ; function begin
	MOVF FCD_RS2320_00057_arg_nTimeout, W
	MOVWF FC_CAL_UAR_00065_arg_nTimeout
	CALL FC_CAL_UAR_00065
	MOVF CompTempVarRet2237, W
	MOVWF CompTempVarRet2227
	MOVF CompTempVarRet2237+D'1', W
	MOVWF CompTempVarRet2227+D'1'
	RETURN
; } FCD_RS2320_ReceiveRS232Char function end

	ORG 0x00000382
FC_CAL_UAR_00063
; { FC_CAL_UART_Init_1 ; function begin
	BSF STATUS, RP0
	BCF STATUS, RP1
	BSF gbl_txsta,2
	MOVLW 0x81
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

	ORG 0x00000391
FCM_reciev_00056
; { FCM_recieve ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVF gbl_FCV_RECIEVE, W
	XORLW 0x41
	BTFSC STATUS,Z
	GOTO	label72
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label77
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label82
	RETURN
label72
	MOVLW 0x64
	MOVWF FCD_RS2320_00057_arg_nTimeout
	CALL FCD_RS2320_00057
	MOVF CompTempVarRet2227, W
	MOVWF gbl_FCV_RECIEVE
	MOVF gbl_FCV_RECIEVE, W
	XORLW 0x31
	BTFSC STATUS,Z
	GOTO	label73
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label74
	GOTO	label75
label73
	MOVF gbl_FCV_QUE1, F
	MOVF gbl_FCV_QUE1+D'1', F
	INCF gbl_FCV_QUE1, F
	BTFSC STATUS,Z
	INCF gbl_FCV_QUE1+D'1', F
	GOTO	label75
label74
	MOVLW 0x01
	SUBWF gbl_FCV_QUE1, F
	MOVF gbl_FCV_QUE1+D'1', F
	BTFSS STATUS,C
	DECF gbl_FCV_QUE1+D'1', F
label75
	CALL FCM_reset_00000
	CALL FCM_displa_00053
	CLRF gbl_FCLV_LOOP3
label76
	MOVLW 0x03
	SUBWF gbl_FCLV_LOOP3, W
	BTFSC STATUS,C
	RETURN
	CALL FCD_PWM0_E_00058
	MOVLW 0x4B
	MOVWF FCD_PWM0_S_00059_arg_nDuty
	CALL FCD_PWM0_S_00059
	MOVLW 0xFF
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xF5
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CALL FCD_PWM0_D_0005A
	MOVLW 0xFF
	BCF STATUS, RP0
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xF5
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	INCF gbl_FCLV_LOOP3, F
	GOTO	label76
label77
	MOVLW 0x64
	MOVWF FCD_RS2320_00057_arg_nTimeout
	CALL FCD_RS2320_00057
	MOVF CompTempVarRet2227, W
	MOVWF gbl_FCV_RECIEVE
	MOVF gbl_FCV_RECIEVE, W
	XORLW 0x31
	BTFSC STATUS,Z
	GOTO	label78
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label79
	GOTO	label80
label78
	MOVF gbl_FCV_QUE2, F
	MOVF gbl_FCV_QUE2+D'1', F
	INCF gbl_FCV_QUE2, F
	BTFSC STATUS,Z
	INCF gbl_FCV_QUE2+D'1', F
	GOTO	label80
label79
	MOVLW 0x01
	SUBWF gbl_FCV_QUE2, F
	MOVF gbl_FCV_QUE2+D'1', F
	BTFSS STATUS,C
	DECF gbl_FCV_QUE2+D'1', F
label80
	CALL FCM_reset_00000
	CALL FCM_displa_00054
	CLRF gbl_FCLV_LOOP4
label81
	MOVLW 0x03
	SUBWF gbl_FCLV_LOOP4, W
	BTFSC STATUS,C
	RETURN
	CALL FCD_PWM0_E_00058
	MOVLW 0x4B
	MOVWF FCD_PWM0_S_00059_arg_nDuty
	CALL FCD_PWM0_S_00059
	MOVLW 0xFF
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xF5
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CALL FCD_PWM0_D_0005A
	MOVLW 0xFF
	BCF STATUS, RP0
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xF5
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	INCF gbl_FCLV_LOOP4, F
	GOTO	label81
label82
	MOVLW 0x64
	MOVWF FCD_RS2320_00057_arg_nTimeout
	CALL FCD_RS2320_00057
	MOVF CompTempVarRet2227, W
	MOVWF gbl_FCV_RECIEVE
	MOVF gbl_FCV_RECIEVE, W
	XORLW 0x31
	BTFSC STATUS,Z
	GOTO	label83
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label84
	GOTO	label85
label83
	MOVF gbl_FCV_QUE3, F
	MOVF gbl_FCV_QUE3+D'1', F
	INCF gbl_FCV_QUE3, F
	BTFSC STATUS,Z
	INCF gbl_FCV_QUE3+D'1', F
	GOTO	label85
label84
	MOVLW 0x01
	SUBWF gbl_FCV_QUE3, F
	MOVF gbl_FCV_QUE3+D'1', F
	BTFSS STATUS,C
	DECF gbl_FCV_QUE3+D'1', F
label85
	CALL FCM_reset_00000
	CALL FCM_displa_00055
	CLRF gbl_FCLV_LOOP5
label86
	MOVLW 0x03
	SUBWF gbl_FCLV_LOOP5, W
	BTFSC STATUS,C
	RETURN
	CALL FCD_PWM0_E_00058
	MOVLW 0x4B
	MOVWF FCD_PWM0_S_00059_arg_nDuty
	CALL FCD_PWM0_S_00059
	MOVLW 0xFF
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xF5
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CALL FCD_PWM0_D_0005A
	MOVLW 0xFF
	BCF STATUS, RP0
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xF5
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	INCF gbl_FCLV_LOOP5, F
	GOTO	label86
; } FCM_recieve function end

	ORG 0x00000437
main
; { main ; function begin
	BSF STATUS, RP0
	BSF STATUS, RP1
	CLRF gbl_ansel
	CLRF gbl_anselh
	CALL FC_CAL_UAR_00063
	MOVLW 0xC0
	MOVWF gbl_option_reg
	MOVLW 0x01
	BCF STATUS, RP0
	MOVWF gbl_FCV_DIGIT
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF gbl_porta
	MOVLW 0xDF
	BSF STATUS, RP0
	ANDWF gbl_trisb, W
	MOVWF gbl_trisb
	MOVLW 0xDF
	BCF STATUS, RP0
	ANDWF gbl_portb, W
	MOVWF gbl_portb
	MOVLW 0xEF
	BSF STATUS, RP0
	ANDWF gbl_trisb, W
	MOVWF gbl_trisb
	MOVLW 0xEF
	BCF STATUS, RP0
	ANDWF gbl_portb, W
	MOVWF gbl_portb
	MOVLW 0x7B
	MOVWF gbl_FCV_QUE1
	CLRF gbl_FCV_QUE1+D'1'
	MOVLW 0xC8
	MOVWF gbl_FCV_QUE2
	MOVLW 0x01
	MOVWF gbl_FCV_QUE2+D'1'
	MOVLW 0x15
	MOVWF gbl_FCV_QUE3
	MOVLW 0x03
	MOVWF gbl_FCV_QUE3+D'1'
	MOVLW 0x01
	MOVWF gbl_FCV_WIN
label87
	MOVLW 0x64
	MOVWF FCD_RS2320_00057_arg_nTimeout
	CALL FCD_RS2320_00057
	MOVF CompTempVarRet2227, W
	MOVWF gbl_FCV_RECIEVE
	MOVF gbl_FCV_RECIEVE, W
	XORLW 0x44
	BTFSS STATUS,Z
	GOTO	label94
	MOVLW 0x64
	MOVWF FCD_RS2320_00057_arg_nTimeout
	CALL FCD_RS2320_00057
	MOVF CompTempVarRet2227, W
	MOVWF gbl_FCV_RECIEVE
	MOVF gbl_FCV_RECIEVE, W
	XORLW 0x41
	BTFSC STATUS,Z
	GOTO	label88
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label89
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label90
	XORLW 0x06
	BTFSC STATUS,Z
	GOTO	label91
	GOTO	label92
label88
	CLRF gbl_FCV_QUE1
	CLRF gbl_FCV_QUE1+D'1'
	CALL FCM_displa_00053
	GOTO	label92
label89
	CLRF gbl_FCV_QUE2
	CLRF gbl_FCV_QUE2+D'1'
	CALL FCM_displa_00054
	GOTO	label92
label90
	CLRF gbl_FCV_QUE3
	CLRF gbl_FCV_QUE3+D'1'
	CALL FCM_displa_00055
	GOTO	label92
label91
	CLRF gbl_FCV_QUE1
	CLRF gbl_FCV_QUE1+D'1'
	CLRF gbl_FCV_QUE2
	CLRF gbl_FCV_QUE2+D'1'
	CLRF gbl_FCV_QUE3
	CLRF gbl_FCV_QUE3+D'1'
	CALL FCM_displa_00053
	CALL FCM_displa_00054
	CALL FCM_displa_00055
label92
	CLRF gbl_FCLV_LOOP1
label93
	MOVLW 0x0A
	SUBWF gbl_FCLV_LOOP1, W
	BTFSC STATUS,C
	GOTO	label95
	CALL FCD_PWM0_E_00058
	MOVLW 0x4B
	MOVWF FCD_PWM0_S_00059_arg_nDuty
	CALL FCD_PWM0_S_00059
	MOVLW 0x96
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CALL FCD_PWM0_D_0005A
	MOVLW 0x96
	BCF STATUS, RP0
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	INCF gbl_FCLV_LOOP1, F
	GOTO	label93
label94
	CALL FCM_reciev_00056
label95
	MOVLW 0x01
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVF gbl_FCV_IHAP, F
	MOVF gbl_FCV_IHAP+D'1', F
	INCF gbl_FCV_IHAP, F
	BTFSC STATUS,Z
	INCF gbl_FCV_IHAP+D'1', F
	CLRF CompTempVar2246
	MOVLW 0x1E
	SUBWF gbl_FCV_IHAP, W
	BTFSC STATUS,Z
	MOVF gbl_FCV_IHAP+D'1', W
	BTFSC STATUS,Z
	INCF CompTempVar2246, F
	MOVF CompTempVar2246, F
	BTFSC STATUS,Z
	GOTO	label87
label96
	MOVF gbl_FCV_WIN, W
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label97
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label98
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label99
	XORLW 0x07
	BTFSC STATUS,Z
	GOTO	label100
	GOTO	label101
label97
	CALL FCM_displa_00053
	GOTO	label101
label98
	CALL FCM_displa_00054
	GOTO	label101
label99
	CALL FCM_displa_00055
	GOTO	label101
label100
	MOVLW 0x01
	MOVWF gbl_FCV_WIN
	GOTO	label96
label101
	INCF gbl_FCV_WIN, W
	MOVWF gbl_FCV_WIN
	CLRF gbl_FCV_IHAP
	CLRF gbl_FCV_IHAP+D'1'
	GOTO	label87
; } main function end

	ORG 0x000004D9
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
	CLRF gbl_FCV_QUE1
	CLRF gbl_FCV_QUE1+D'1'
	CLRF gbl_FCV_QUE2
	CLRF gbl_FCV_QUE2+D'1'
	CLRF gbl_FCV_QUE3
	CLRF gbl_FCV_QUE3+D'1'
	CLRF gbl_FCV_IHAP
	CLRF gbl_FCV_IHAP+D'1'
	BCF PCLATH,3
	BCF PCLATH,4
	GOTO	main
	ORG 0x00000509
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
	DW 0x3EFF
	END
