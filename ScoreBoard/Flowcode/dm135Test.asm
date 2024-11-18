;/////////////////////////////////////////////////////////////////////////////////
;// Code Generator: BoostC Compiler - http://www.sourceboost.com
;// Version       : 7.03
;// License Type  : Pro License
;// Limitations   : PIC12,PIC16 max code size:Unlimited, max RAM banks:Unlimited
;/////////////////////////////////////////////////////////////////////////////////

	include "P16F690.inc"
; Heap block 0, size:95 (0x000000A0 - 0x000000FE)
__HEAP_BLOCK0_BANK               EQU	0x00000001
__HEAP_BLOCK0_START_OFFSET       EQU	0x00000020
__HEAP_BLOCK0_END_OFFSET         EQU	0x0000007E
; Heap block 1, size:80 (0x00000120 - 0x0000016F)
__HEAP_BLOCK1_BANK               EQU	0x00000002
__HEAP_BLOCK1_START_OFFSET       EQU	0x00000020
__HEAP_BLOCK1_END_OFFSET         EQU	0x0000006F
; Heap block 2, size:18 (0x0000005E - 0x0000006F)
__HEAP_BLOCK2_BANK               EQU	0x00000000
__HEAP_BLOCK2_START_OFFSET       EQU	0x0000005E
__HEAP_BLOCK2_END_OFFSET         EQU	0x0000006F
; Heap block 3, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK3_BANK               EQU	0x00000000
__HEAP_BLOCK3_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK3_END_OFFSET         EQU	0x00000000
gbl_status                       EQU	0x00000003 ; bytes:1
gbl_14_LSR                       EQU	0x00000025 ; bytes:4
gbl_float_detect_tininess        EQU	0x0000003E ; bytes:1
gbl_float_rounding_mode          EQU	0x0000003F ; bytes:1
gbl_float_exception_flags        EQU	0x00000040 ; bytes:1
gbl_15_gbl_aSig                  EQU	0x00000029 ; bytes:4
gbl_15_gbl_bSig                  EQU	0x0000002D ; bytes:4
gbl_15_gbl_zSig                  EQU	0x00000031 ; bytes:4
gbl_15_gbl_aExp                  EQU	0x00000041 ; bytes:1
gbl_15_gbl_bExp                  EQU	0x00000042 ; bytes:1
gbl_15_gbl_zExp                  EQU	0x0000003C ; bytes:2
gbl_15_gbl_aSign                 EQU	0x00000043 ; bytes:1
gbl_15_gbl_bSign                 EQU	0x00000044 ; bytes:1
gbl_15_gbl_zSign                 EQU	0x00000045 ; bytes:1
gbl_15_gbl_zSigZero              EQU	0x00000046 ; bytes:1
gbl_15_gbl_ret                   EQU	0x00000035 ; bytes:4
gbl_indf                         EQU	0x00000000 ; bytes:1
gbl_tmr0                         EQU	0x00000001 ; bytes:1
gbl_pcl                          EQU	0x00000002 ; bytes:1
gbl_fsr                          EQU	0x00000004 ; bytes:1
gbl_porta                        EQU	0x00000005 ; bytes:1
gbl_portb                        EQU	0x00000006 ; bytes:1
gbl_portc                        EQU	0x00000007 ; bytes:1
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
gbl_pwm1con                      EQU	0x0000001C ; bytes:1
gbl_eccpas                       EQU	0x0000001D ; bytes:1
gbl_adresh                       EQU	0x0000001E ; bytes:1
gbl_adcon0                       EQU	0x0000001F ; bytes:1
gbl_option_reg                   EQU	0x00000081 ; bytes:1
gbl_trisa                        EQU	0x00000085 ; bytes:1
gbl_trisb                        EQU	0x00000086 ; bytes:1
gbl_trisc                        EQU	0x00000087 ; bytes:1
gbl_pie1                         EQU	0x0000008C ; bytes:1
gbl_pie2                         EQU	0x0000008D ; bytes:1
gbl_pcon                         EQU	0x0000008E ; bytes:1
gbl_osccon                       EQU	0x0000008F ; bytes:1
gbl_osctune                      EQU	0x00000090 ; bytes:1
gbl_pr2                          EQU	0x00000092 ; bytes:1
gbl_sspadd                       EQU	0x00000093 ; bytes:1
gbl_msk                          EQU	0x00000093 ; bytes:1
gbl_sspmsk                       EQU	0x00000093 ; bytes:1
gbl_sspstat                      EQU	0x00000094 ; bytes:1
gbl_wpu                          EQU	0x00000095 ; bytes:1
gbl_wpua                         EQU	0x00000095 ; bytes:1
gbl_ioc                          EQU	0x00000096 ; bytes:1
gbl_ioca                         EQU	0x00000096 ; bytes:1
gbl_wdtcon                       EQU	0x00000097 ; bytes:1
gbl_txsta                        EQU	0x00000098 ; bytes:1
gbl_spbrg                        EQU	0x00000099 ; bytes:1
gbl_spbrgh                       EQU	0x0000009A ; bytes:1
gbl_baudctl                      EQU	0x0000009B ; bytes:1
gbl_adresl                       EQU	0x0000009E ; bytes:1
gbl_adcon1                       EQU	0x0000009F ; bytes:1
gbl_eedata                       EQU	0x0000010C ; bytes:1
gbl_eeadr                        EQU	0x0000010D ; bytes:1
gbl_eedath                       EQU	0x0000010E ; bytes:1
gbl_eeadrh                       EQU	0x0000010F ; bytes:1
gbl_wpub                         EQU	0x00000115 ; bytes:1
gbl_iocb                         EQU	0x00000116 ; bytes:1
gbl_vrcon                        EQU	0x00000118 ; bytes:1
gbl_cm1con0                      EQU	0x00000119 ; bytes:1
gbl_cm2con0                      EQU	0x0000011A ; bytes:1
gbl_cm2con1                      EQU	0x0000011B ; bytes:1
gbl_ansel                        EQU	0x0000011E ; bytes:1
gbl_anselh                       EQU	0x0000011F ; bytes:1
gbl_eecon1                       EQU	0x0000018C ; bytes:1
gbl_eecon2                       EQU	0x0000018D ; bytes:1
gbl_pstrcon                      EQU	0x0000019D ; bytes:1
gbl_srcon                        EQU	0x0000019E ; bytes:1
gbl_FCV_RECIEVE                  EQU	0x00000047 ; bytes:1
gbl_FCV_TEMO_TENS                EQU	0x00000048 ; bytes:1
gbl_FCV_DAT                      EQU	0x00000049 ; bit:0
gbl_FCV_RECV                     EQU	0x00000020 ; bytes:5
gbl_FCV_BITS                     EQU	0x0000004A ; bytes:1
gbl_FCV_TEMP_ONES                EQU	0x0000004B ; bytes:1
gbl_FCV_TENS                     EQU	0x0000004C ; bytes:1
gbl_FCV_DIGIT                    EQU	0x0000004D ; bytes:1
gbl_FCV_COUNT                    EQU	0x0000004E ; bytes:1
gbl_FCV_ONES                     EQU	0x0000004F ; bytes:1
gbl_FCV_RX_COUNT                 EQU	0x00000050 ; bytes:1
gbl_FCLV_LOOP1                   EQU	0x00000051 ; bytes:1
gbl_FCLV_LOOP2                   EQU	0x00000052 ; bytes:1
gbl_FCLV_LOOP3                   EQU	0x00000053 ; bytes:1
CompTempVar2188                  EQU	0x00000054 ; bytes:1
CompTempVar2189                  EQU	0x00000055 ; bytes:1
CompTempVar2190                  EQU	0x00000054 ; bytes:1
CompTempVar2191                  EQU	0x00000054 ; bytes:1
CompTempVar2193                  EQU	0x00000054 ; bytes:1
CompTempVar2194                  EQU	0x00000055 ; bytes:1
CompTempVar2195                  EQU	0x00000054 ; bytes:1
CompTempVar2196                  EQU	0x00000054 ; bytes:1
CompTempVar2198                  EQU	0x00000054 ; bytes:1
CompTempVarRet2203               EQU	0x00000056 ; bytes:2
FC_CAL_UAR_00057_arg_nTimeout    EQU	0x00000055 ; bytes:1
CompTempVarRet2204               EQU	0x0000005C ; bytes:2
FC_CAL_UAR_00057_1_retVal        EQU	0x00000056 ; bytes:1
FC_CAL_UAR_00057_1_delay1        EQU	0x00000057 ; bytes:1
FC_CAL_UAR_00057_1_regcheck      EQU	0x00000058 ; bytes:1
FC_CAL_UAR_00057_1_bWaitForever  EQU	0x00000059 ; bytes:1
FC_CAL_UAR_00057_1_rxStatus      EQU	0x0000005A ; bytes:1
FC_CAL_UAR_00057_1_dummy         EQU	0x0000005B ; bytes:1
FCD_RS2320_00054_arg_nTimeout    EQU	0x00000054 ; bytes:1
delay_us_00000_arg_del           EQU	0x0000005C ; bytes:1
Int1Context                      EQU	0x0000007F ; bytes:1
Int1BContext                     EQU	0x00000039 ; bytes:3
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
	MOVLW 0x03
	ADDWF delay_us_00000_arg_del, F
	RRF delay_us_00000_arg_del, F
	RRF delay_us_00000_arg_del, F
	MOVLW 0x7F
	ANDWF delay_us_00000_arg_del, F
label1
	NOP
	DECFSZ delay_us_00000_arg_del, F
	GOTO	label1
	RETURN
; } delay_us function end

	ORG 0x0000001A
FC_CAL_UAR_00057
; { FC_CAL_UART_Receive_1 ; function begin
	MOVLW 0xFF
	MOVWF FC_CAL_UAR_00057_1_retVal
	CLRF FC_CAL_UAR_00057_1_delay1
	CLRF FC_CAL_UAR_00057_1_regcheck
	CLRF FC_CAL_UAR_00057_1_bWaitForever
	CLRF FC_CAL_UAR_00057_1_rxStatus
	CLRF FC_CAL_UAR_00057_1_dummy
	INCF FC_CAL_UAR_00057_arg_nTimeout, W
	BTFSS STATUS,Z
	GOTO	label2
	MOVLW 0x01
	MOVWF FC_CAL_UAR_00057_1_bWaitForever
label2
	MOVF FC_CAL_UAR_00057_1_rxStatus, F
	BTFSS STATUS,Z
	GOTO	label5
	MOVF FC_CAL_UAR_00057_1_bWaitForever, F
	BTFSS STATUS,Z
	GOTO	label4
	MOVF FC_CAL_UAR_00057_arg_nTimeout, F
	BTFSS STATUS,Z
	GOTO	label3
	MOVLW 0x01
	MOVWF FC_CAL_UAR_00057_1_rxStatus
	GOTO	label4
label3
	MOVLW 0x0A
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	INCF FC_CAL_UAR_00057_1_delay1, W
	MOVWF FC_CAL_UAR_00057_1_delay1
	MOVF FC_CAL_UAR_00057_1_delay1, W
	XORLW 0x64
	BTFSS STATUS,Z
	GOTO	label4
	DECF FC_CAL_UAR_00057_arg_nTimeout, W
	MOVWF FC_CAL_UAR_00057_arg_nTimeout
	CLRWDT
	CLRF FC_CAL_UAR_00057_1_delay1
label4
	MOVLW 0x20
	ANDWF gbl_pir1, W
	MOVWF FC_CAL_UAR_00057_1_regcheck
	MOVF FC_CAL_UAR_00057_1_regcheck, F
	BTFSC STATUS,Z
	GOTO	label2
	MOVLW 0x02
	MOVWF FC_CAL_UAR_00057_1_rxStatus
	GOTO	label2
label5
	MOVF FC_CAL_UAR_00057_1_rxStatus, W
	XORLW 0x02
	BTFSS STATUS,Z
	GOTO	label8
	MOVLW 0x04
	ANDWF gbl_rcsta, W
	MOVWF FC_CAL_UAR_00057_1_regcheck
	MOVF FC_CAL_UAR_00057_1_regcheck, F
	BTFSC STATUS,Z
	GOTO	label6
	MOVF gbl_rcreg, W
	MOVWF FC_CAL_UAR_00057_1_dummy
	GOTO	label8
label6
	MOVLW 0x02
	ANDWF gbl_rcsta, W
	MOVWF FC_CAL_UAR_00057_1_regcheck
	MOVF FC_CAL_UAR_00057_1_regcheck, F
	BTFSC STATUS,Z
	GOTO	label7
	BCF gbl_rcsta,4
	BSF gbl_rcsta,4
	GOTO	label8
label7
	CLRF FC_CAL_UAR_00057_1_retVal
	MOVF gbl_rcreg, W
	IORWF FC_CAL_UAR_00057_1_retVal, W
	MOVWF FC_CAL_UAR_00057_1_retVal
label8
	MOVF FC_CAL_UAR_00057_1_retVal, W
	MOVWF CompTempVarRet2204
	CLRF CompTempVarRet2204+D'1'
	RETURN
; } FC_CAL_UART_Receive_1 function end

	ORG 0x00000066
FCM_databa_00051
; { FCM_databank ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVF gbl_FCV_DIGIT, W
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label9
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label10
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label11
	XORLW 0x07
	BTFSC STATUS,Z
	GOTO	label12
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label13
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label14
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label15
	XORLW 0x0F
	BTFSC STATUS,Z
	GOTO	label16
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label17
	XORLW 0x09
	BTFSC STATUS,Z
	GOTO	label18
	RETURN
label9
	MOVLW 0x30
	MOVWF gbl_FCV_BITS
	RETURN
label10
	MOVLW 0x5B
	MOVWF gbl_FCV_BITS
	RETURN
label11
	MOVLW 0x79
	MOVWF gbl_FCV_BITS
	RETURN
label12
	MOVLW 0x74
	MOVWF gbl_FCV_BITS
	RETURN
label13
	MOVLW 0x6D
	MOVWF gbl_FCV_BITS
	RETURN
label14
	MOVLW 0x6F
	MOVWF gbl_FCV_BITS
	RETURN
label15
	MOVLW 0x38
	MOVWF gbl_FCV_BITS
	RETURN
label16
	MOVLW 0x7F
	MOVWF gbl_FCV_BITS
	RETURN
label17
	MOVLW 0x7D
	MOVWF gbl_FCV_BITS
	RETURN
label18
	MOVLW 0x3F
	MOVWF gbl_FCV_BITS
	RETURN
; } FCM_databank function end

	ORG 0x000000A6
FCD_RS2320_00054
; { FCD_RS2320_ReceiveRS232Char ; function begin
	MOVF FCD_RS2320_00054_arg_nTimeout, W
	MOVWF FC_CAL_UAR_00057_arg_nTimeout
	CALL FC_CAL_UAR_00057
	MOVF CompTempVarRet2204, W
	MOVWF CompTempVarRet2203
	MOVF CompTempVarRet2204+D'1', W
	MOVWF CompTempVarRet2203+D'1'
	RETURN
; } FCD_RS2320_ReceiveRS232Char function end

	ORG 0x000000AE
FC_CAL_UAR_00055
; { FC_CAL_UART_Init_1 ; function begin
	BSF STATUS, RP0
	BCF STATUS, RP1
	BSF gbl_txsta,2
	MOVLW 0x19
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

	ORG 0x000000BD
FCM_displa_00052
; { FCM_display ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVF gbl_FCV_TENS, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_databa_00051
	CLRF gbl_FCLV_LOOP1
label19
	MOVLW 0x08
	SUBWF gbl_FCLV_LOOP1, W
	BTFSC STATUS,C
	GOTO	label22
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
	MOVLW 0xFB
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	BCF STATUS, RP0
	BTFSS gbl_FCV_DAT,0
	GOTO	label20
	MOVLW 0xFB
	ANDWF gbl_portc, W
	MOVWF CompTempVar2190
	MOVLW 0x04
	IORWF CompTempVar2190, W
	MOVWF gbl_portc
	GOTO	label21
label20
	MOVLW 0xFB
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label21
	MOVLW 0x01
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF CompTempVar2191
	MOVLW 0x01
	IORWF CompTempVar2191, W
	MOVWF gbl_portc
	MOVLW 0x01
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	MOVLW 0x01
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	MOVF gbl_FCV_BITS, F
	BCF STATUS,C
	RRF gbl_FCV_BITS, F
	INCF gbl_FCLV_LOOP1, F
	GOTO	label19
label22
	MOVF gbl_FCV_ONES, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_databa_00051
	CLRF gbl_FCLV_LOOP2
label23
	MOVLW 0x08
	SUBWF gbl_FCLV_LOOP2, W
	BTFSC STATUS,C
	GOTO	label26
	MOVLW 0x01
	ANDWF gbl_FCV_BITS, W
	MOVWF CompTempVar2193
	CLRF CompTempVar2194
	MOVF CompTempVar2193, F
	BTFSS STATUS,Z
	BSF CompTempVar2194,0
	BCF gbl_FCV_DAT,0
	MOVF CompTempVar2194, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DAT,0
	MOVLW 0xFB
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	BCF STATUS, RP0
	BTFSS gbl_FCV_DAT,0
	GOTO	label24
	MOVLW 0xFB
	ANDWF gbl_portc, W
	MOVWF CompTempVar2195
	MOVLW 0x04
	IORWF CompTempVar2195, W
	MOVWF gbl_portc
	GOTO	label25
label24
	MOVLW 0xFB
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label25
	MOVLW 0x01
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF CompTempVar2196
	MOVLW 0x01
	IORWF CompTempVar2196, W
	MOVWF gbl_portc
	MOVLW 0x01
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	MOVLW 0x01
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	MOVF gbl_FCV_BITS, F
	BCF STATUS,C
	RRF gbl_FCV_BITS, F
	INCF gbl_FCLV_LOOP2, F
	GOTO	label23
label26
	MOVLW 0xFD
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFD
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF CompTempVar2198
	MOVLW 0x02
	IORWF CompTempVar2198, W
	MOVWF gbl_portc
	MOVLW 0x01
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	MOVLW 0xFD
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFD
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	MOVLW 0x01
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	RETURN
; } FCM_display function end

	ORG 0x00000163
FCM_Data_r_00053
; { FCM_Data_recv ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	CLRF gbl_FCLV_LOOP3
label27
	MOVLW 0x03
	SUBWF gbl_FCLV_LOOP3, W
	BTFSC STATUS,C
	GOTO	label28
	MOVLW 0x19
	MOVWF FCD_RS2320_00054_arg_nTimeout
	CALL FCD_RS2320_00054
	MOVF CompTempVarRet2203, W
	MOVWF gbl_FCV_RECIEVE
	BCF	STATUS,IRP
	MOVLW LOW(gbl_FCV_RECV+D'0')
	MOVWF FSR
	MOVF gbl_FCV_RX_COUNT, W
	ADDWF FSR, F
	MOVF gbl_FCV_RECIEVE, W
	MOVWF INDF
	INCF gbl_FCV_RX_COUNT, W
	MOVWF gbl_FCV_RX_COUNT
	INCF gbl_FCLV_LOOP3, F
	GOTO	label27
label28
	MOVF gbl_FCV_RECV+D'1', W
	XORLW 0x6F
	BTFSS STATUS,Z
	GOTO	label29
	MOVF gbl_FCV_RECV, W
	MOVWF gbl_FCV_ONES
	MOVF gbl_FCV_RECV+D'2', W
	MOVWF gbl_FCV_TENS
label29
	CLRF gbl_FCV_RX_COUNT
	RETURN
; } FCM_Data_recv function end

	ORG 0x00000184
main
; { main ; function begin
	BCF STATUS, RP0
	BSF STATUS, RP1
	CLRF gbl_ansel
	CLRF gbl_anselh
	CALL FC_CAL_UAR_00055
	MOVLW 0xC0
	MOVWF gbl_option_reg
	MOVLW 0xFE
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
	MOVLW 0x09
	MOVWF gbl_FCV_TENS
	MOVWF gbl_FCV_ONES
	CALL FCM_displa_00052
label30
	MOVLW 0x19
	MOVWF FCD_RS2320_00054_arg_nTimeout
	CALL FCD_RS2320_00054
	MOVF CompTempVarRet2203, W
	MOVWF gbl_FCV_RECIEVE
	MOVF gbl_FCV_RECIEVE, W
	XORLW 0x74
	BTFSC STATUS,Z
	CALL FCM_Data_r_00053
	CALL FCM_displa_00052
	GOTO	label30
; } main function end

	ORG 0x000001A9
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
	CLRF gbl_FCV_TEMO_TENS
	BCF gbl_FCV_DAT,0
	CLRF gbl_FCV_TEMP_ONES
	CLRF gbl_FCV_TENS
	CLRF gbl_FCV_COUNT
	CLRF gbl_FCV_ONES
	CLRF gbl_FCV_RX_COUNT
	BCF PCLATH,3
	BCF PCLATH,4
	GOTO	main
	ORG 0x000001D8
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
	DW 0x30D4
	END
