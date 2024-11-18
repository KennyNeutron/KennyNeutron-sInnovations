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
; Heap block 2, size:26 (0x00000056 - 0x0000006F)
__HEAP_BLOCK2_BANK               EQU	0x00000000
__HEAP_BLOCK2_START_OFFSET       EQU	0x00000056
__HEAP_BLOCK2_END_OFFSET         EQU	0x0000006F
; Heap block 3, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK3_BANK               EQU	0x00000000
__HEAP_BLOCK3_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK3_END_OFFSET         EQU	0x00000000
gbl_status                       EQU	0x00000003 ; bytes:1
gbl_14_LSR                       EQU	0x00000020 ; bytes:4
gbl_float_detect_tininess        EQU	0x0000003B ; bytes:1
gbl_float_rounding_mode          EQU	0x0000003C ; bytes:1
gbl_float_exception_flags        EQU	0x0000003D ; bytes:1
gbl_15_gbl_aSig                  EQU	0x00000024 ; bytes:4
gbl_15_gbl_bSig                  EQU	0x00000028 ; bytes:4
gbl_15_gbl_zSig                  EQU	0x0000002C ; bytes:4
gbl_15_gbl_aExp                  EQU	0x0000003E ; bytes:1
gbl_15_gbl_bExp                  EQU	0x0000003F ; bytes:1
gbl_15_gbl_zExp                  EQU	0x00000037 ; bytes:2
gbl_15_gbl_aSign                 EQU	0x00000040 ; bytes:1
gbl_15_gbl_bSign                 EQU	0x00000041 ; bytes:1
gbl_15_gbl_zSign                 EQU	0x00000042 ; bytes:1
gbl_15_gbl_zSigZero              EQU	0x00000043 ; bytes:1
gbl_15_gbl_ret                   EQU	0x00000030 ; bytes:4
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
gbl_FCV_LOOP                     EQU	0x00000044 ; bytes:1
gbl_FCV_ROW                      EQU	0x00000045 ; bytes:1
gbl_FCV_RX                       EQU	0x00000046 ; bytes:1
gbl_FCV_DELAY                    EQU	0x00000039 ; bytes:2
gbl_FCV_QUANT                    EQU	0x00000047 ; bytes:1
CompTempVar2188                  EQU	0x0000004D ; bytes:1
CompTempVar2190                  EQU	0x0000004D ; bytes:1
CompTempVar2191                  EQU	0x0000004D ; bytes:1
CompTempVar2194                  EQU	0x0000004D ; bytes:1
FC_CAL_UAR_0005F_arg_nTimeout    EQU	0x0000004D ; bytes:1
CompTempVarRet2196               EQU	0x00000054 ; bytes:2
FC_CAL_UAR_0005F_1_retVal        EQU	0x0000004E ; bytes:1
FC_CAL_UAR_0005F_1_delay1        EQU	0x0000004F ; bytes:1
FC_CAL_UAR_0005F_1_regcheck      EQU	0x00000050 ; bytes:1
FC_CAL_UAR_0005F_1_bWaitForever  EQU	0x00000051 ; bytes:1
FC_CAL_UAR_0005F_1_rxStatus      EQU	0x00000052 ; bytes:1
FC_CAL_UAR_0005F_1_dummy         EQU	0x00000053 ; bytes:1
FCD_RS2320_00064_arg_nTimeout    EQU	0x0000004C ; bytes:1
CompTempVarRet2201               EQU	0x0000004D ; bytes:2
CompTempVar2206                  EQU	0x00000048 ; bytes:1
CompTempVar2207                  EQU	0x00000049 ; bytes:1
CompTempVar2208                  EQU	0x0000004A ; bytes:1
CompTempVar2209                  EQU	0x0000004B ; bytes:1
CompTempVar2211                  EQU	0x0000004C ; bytes:1
CompTempVar2212                  EQU	0x0000004D ; bytes:1
CompTempVar2214                  EQU	0x0000004C ; bytes:1
CompTempVar2215                  EQU	0x0000004D ; bytes:1
CompTempVar2217                  EQU	0x0000004C ; bytes:1
CompTempVar2218                  EQU	0x0000004D ; bytes:1
CompTempVar2220                  EQU	0x0000004C ; bytes:1
CompTempVar2221                  EQU	0x0000004D ; bytes:1
delay_us_00000_arg_del           EQU	0x00000054 ; bytes:1
delay_ms_00000_arg_del           EQU	0x0000004E ; bytes:1
delay_s_00000_arg_del            EQU	0x0000004D ; bytes:1
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
delay_ms_00000
; { delay_ms ; function begin
	MOVF delay_ms_00000_arg_del, F
	BTFSS STATUS,Z
	GOTO	label2
	RETURN
label2
	MOVLW 0xF9
label3
	ADDLW 0xFF
	BTFSS STATUS,Z
	GOTO	label3
	NOP
	DECFSZ delay_ms_00000_arg_del, F
	GOTO	label2
	RETURN
; } delay_ms function end

	ORG 0x00000026
delay_s_00000
; { delay_s ; function begin
label4
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xFA
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	DECFSZ delay_s_00000_arg_del, F
	GOTO	label4
	RETURN
; } delay_s function end

	ORG 0x00000035
FC_CAL_UAR_0005F
; { FC_CAL_UART_Receive_1 ; function begin
	MOVLW 0xFF
	MOVWF FC_CAL_UAR_0005F_1_retVal
	CLRF FC_CAL_UAR_0005F_1_delay1
	CLRF FC_CAL_UAR_0005F_1_regcheck
	CLRF FC_CAL_UAR_0005F_1_bWaitForever
	CLRF FC_CAL_UAR_0005F_1_rxStatus
	CLRF FC_CAL_UAR_0005F_1_dummy
	INCF FC_CAL_UAR_0005F_arg_nTimeout, W
	BTFSS STATUS,Z
	GOTO	label5
	MOVLW 0x01
	MOVWF FC_CAL_UAR_0005F_1_bWaitForever
label5
	MOVF FC_CAL_UAR_0005F_1_rxStatus, F
	BTFSS STATUS,Z
	GOTO	label8
	MOVF FC_CAL_UAR_0005F_1_bWaitForever, F
	BTFSS STATUS,Z
	GOTO	label7
	MOVF FC_CAL_UAR_0005F_arg_nTimeout, F
	BTFSS STATUS,Z
	GOTO	label6
	MOVLW 0x01
	MOVWF FC_CAL_UAR_0005F_1_rxStatus
	GOTO	label7
label6
	MOVLW 0x0A
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	INCF FC_CAL_UAR_0005F_1_delay1, W
	MOVWF FC_CAL_UAR_0005F_1_delay1
	MOVF FC_CAL_UAR_0005F_1_delay1, W
	XORLW 0x64
	BTFSS STATUS,Z
	GOTO	label7
	DECF FC_CAL_UAR_0005F_arg_nTimeout, W
	MOVWF FC_CAL_UAR_0005F_arg_nTimeout
	CLRWDT
	CLRF FC_CAL_UAR_0005F_1_delay1
label7
	MOVLW 0x20
	ANDWF gbl_pir1, W
	MOVWF FC_CAL_UAR_0005F_1_regcheck
	MOVF FC_CAL_UAR_0005F_1_regcheck, F
	BTFSC STATUS,Z
	GOTO	label5
	MOVLW 0x02
	MOVWF FC_CAL_UAR_0005F_1_rxStatus
	GOTO	label5
label8
	MOVF FC_CAL_UAR_0005F_1_rxStatus, W
	XORLW 0x02
	BTFSS STATUS,Z
	GOTO	label11
	MOVLW 0x04
	ANDWF gbl_rcsta, W
	MOVWF FC_CAL_UAR_0005F_1_regcheck
	MOVF FC_CAL_UAR_0005F_1_regcheck, F
	BTFSC STATUS,Z
	GOTO	label9
	MOVF gbl_rcreg, W
	MOVWF FC_CAL_UAR_0005F_1_dummy
	GOTO	label11
label9
	MOVLW 0x02
	ANDWF gbl_rcsta, W
	MOVWF FC_CAL_UAR_0005F_1_regcheck
	MOVF FC_CAL_UAR_0005F_1_regcheck, F
	BTFSC STATUS,Z
	GOTO	label10
	BCF gbl_rcsta,4
	BSF gbl_rcsta,4
	GOTO	label11
label10
	CLRF FC_CAL_UAR_0005F_1_retVal
	MOVF gbl_rcreg, W
	IORWF FC_CAL_UAR_0005F_1_retVal, W
	MOVWF FC_CAL_UAR_0005F_1_retVal
label11
	MOVF FC_CAL_UAR_0005F_1_retVal, W
	MOVWF CompTempVarRet2196
	CLRF CompTempVarRet2196+D'1'
	RETURN
; } FC_CAL_UART_Receive_1 function end

	ORG 0x00000081
FC_CAL_UAR_0005D
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

	ORG 0x00000090
FCM_row4_s_0005C
; { FCM_row4_stop ; function begin
	MOVLW 0xFB
	BSF STATUS, RP0
	BCF STATUS, RP1
	ANDWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0xFB
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF gbl_porta
	MOVLW 0xEF
	BSF STATUS, RP0
	ANDWF gbl_trisb, W
	MOVWF gbl_trisb
	MOVLW 0xEF
	BCF STATUS, RP0
	ANDWF gbl_portb, W
	MOVWF gbl_portb
	RETURN
; } FCM_row4_stop function end

	ORG 0x000000A2
FCM_row4_f_00054
; { FCM_row4_forward ; function begin
	MOVLW 0xFB
	BSF STATUS, RP0
	BCF STATUS, RP1
	ANDWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0xFB
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF gbl_porta
	MOVLW 0xEF
	BSF STATUS, RP0
	ANDWF gbl_trisb, W
	MOVWF gbl_trisb
	MOVLW 0xEF
	BCF STATUS, RP0
	ANDWF gbl_portb, W
	MOVWF CompTempVar2191
	MOVLW 0x10
	IORWF CompTempVar2191, W
	MOVWF gbl_portb
	RETURN
; } FCM_row4_forward function end

	ORG 0x000000B7
FCM_row3_s_0005B
; { FCM_row3_stop ; function begin
	MOVLW 0xFE
	BSF STATUS, RP0
	BCF STATUS, RP1
	ANDWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF gbl_porta
	MOVLW 0xFD
	BSF STATUS, RP0
	ANDWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0xFD
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF gbl_porta
	RETURN
; } FCM_row3_stop function end

	ORG 0x000000C9
FCM_row3_f_00053
; { FCM_row3_forward ; function begin
	MOVLW 0xFE
	BSF STATUS, RP0
	BCF STATUS, RP1
	ANDWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2190
	MOVLW 0x01
	IORWF CompTempVar2190, W
	MOVWF gbl_porta
	MOVLW 0xFD
	BSF STATUS, RP0
	ANDWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0xFD
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF gbl_porta
	RETURN
; } FCM_row3_forward function end

	ORG 0x000000DE
FCM_row2_s_0005A
; { FCM_row2_stop ; function begin
	MOVLW 0xFB
	BSF STATUS, RP0
	BCF STATUS, RP1
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFB
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	MOVLW 0xF7
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xF7
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	RETURN
; } FCM_row2_stop function end

	ORG 0x000000F0
FCM_row2_f_00057
; { FCM_row2_forward ; function begin
	MOVLW 0xFB
	BSF STATUS, RP0
	BCF STATUS, RP1
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFB
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	MOVLW 0xF7
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xF7
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF CompTempVar2194
	MOVLW 0x08
	IORWF CompTempVar2194, W
	MOVWF gbl_portc
	RETURN
; } FCM_row2_forward function end

	ORG 0x00000105
FCM_row1_s_00059
; { FCM_row1_stop ; function begin
	MOVLW 0xFE
	BSF STATUS, RP0
	BCF STATUS, RP1
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
	RETURN
; } FCM_row1_stop function end

	ORG 0x00000117
FCM_row1_f_00051
; { FCM_row1_forward ; function begin
	MOVLW 0xFE
	BSF STATUS, RP0
	BCF STATUS, RP1
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
	MOVWF CompTempVar2188
	MOVLW 0x02
	IORWF CompTempVar2188, W
	MOVWF gbl_portc
	RETURN
; } FCM_row1_forward function end

	ORG 0x0000012C
FCD_RS2320_00064
; { FCD_RS2320_ReceiveRS232Char ; function begin
	MOVF FCD_RS2320_00064_arg_nTimeout, W
	MOVWF FC_CAL_UAR_0005F_arg_nTimeout
	CALL FC_CAL_UAR_0005F
	MOVF CompTempVarRet2196, W
	MOVWF CompTempVarRet2201
	MOVF CompTempVarRet2196+D'1', W
	MOVWF CompTempVarRet2201+D'1'
	RETURN
; } FCD_RS2320_ReceiveRS232Char function end

	ORG 0x00000134
main
; { main ; function begin
	BCF STATUS, RP0
	BSF STATUS, RP1
	CLRF gbl_ansel
	CLRF gbl_anselh
	CALL FC_CAL_UAR_0005D
	MOVLW 0xC0
	MOVWF gbl_option_reg
	MOVLW 0x03
	BCF STATUS, RP0
	MOVWF gbl_FCV_QUANT
label12
	MOVLW 0xBF
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xBF
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label13
	CLRF gbl_FCV_DELAY
	CLRF gbl_FCV_DELAY+D'1'
	CLRF gbl_FCV_QUANT
	CLRF gbl_FCV_ROW
	MOVLW 0x64
	MOVWF FCD_RS2320_00064_arg_nTimeout
	CALL FCD_RS2320_00064
	MOVF CompTempVarRet2201, W
	MOVWF gbl_FCV_RX
	MOVF gbl_FCV_RX, W
	XORLW 0x52
	BTFSS STATUS,Z
	GOTO	label12
	MOVLW 0x64
	MOVWF FCD_RS2320_00064_arg_nTimeout
	CALL FCD_RS2320_00064
	MOVF CompTempVarRet2201, W
	MOVWF gbl_FCV_RX
	CLRF CompTempVar2207
	MOVF gbl_FCV_RX, W
	SUBLW 0x30
	BTFSS STATUS,C
	INCF CompTempVar2207, F
	CLRF CompTempVar2206
	MOVLW 0x35
	SUBWF gbl_FCV_RX, W
	BTFSS STATUS,C
	INCF CompTempVar2206, F
	MOVF CompTempVar2206, W
	ANDWF CompTempVar2207, W
	BTFSC STATUS,Z
	GOTO	label13
	MOVLW 0x30
	SUBWF gbl_FCV_RX, W
	MOVWF gbl_FCV_ROW
	MOVLW 0x64
	MOVWF FCD_RS2320_00064_arg_nTimeout
	CALL FCD_RS2320_00064
	MOVF CompTempVarRet2201, W
	MOVWF gbl_FCV_RX
	MOVF gbl_FCV_RX, W
	XORLW 0x51
	BTFSS STATUS,Z
	GOTO	label13
	MOVLW 0x64
	MOVWF FCD_RS2320_00064_arg_nTimeout
	CALL FCD_RS2320_00064
	MOVF CompTempVarRet2201, W
	MOVWF gbl_FCV_RX
	CLRF CompTempVar2209
	MOVF gbl_FCV_RX, W
	SUBLW 0x30
	BTFSS STATUS,C
	INCF CompTempVar2209, F
	CLRF CompTempVar2208
	MOVF gbl_FCV_RX, W
	SUBLW 0x39
	BTFSC STATUS,C
	INCF CompTempVar2208, F
	MOVF CompTempVar2208, W
	ANDWF CompTempVar2209, W
	BTFSC STATUS,Z
	GOTO	label13
	MOVLW 0x30
	SUBWF gbl_FCV_RX, W
	MOVWF gbl_FCV_QUANT
	CLRF gbl_FCV_LOOP
	MOVF gbl_FCV_ROW, W
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label14
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label17
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label20
	XORLW 0x07
	BTFSC STATUS,Z
	GOTO	label23
	GOTO	label13
label14
	MOVLW 0xBF
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xBF
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF CompTempVar2212
	MOVLW 0x40
	IORWF CompTempVar2212, W
	MOVWF gbl_portc
	MOVLW 0x02
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
label15
	CLRF CompTempVar2211
	MOVF gbl_FCV_QUANT, W
	SUBWF gbl_FCV_LOOP, W
	BTFSC STATUS,Z
	INCF CompTempVar2211, F
	MOVF CompTempVar2211, F
	BTFSS STATUS,Z
	GOTO	label16
	CALL FCM_row1_f_00051
	MOVLW 0xFF
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xFF
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0x5A
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CALL FCM_row1_s_00059
	MOVLW 0x02
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	INCF gbl_FCV_LOOP, W
	MOVWF gbl_FCV_LOOP
	GOTO	label15
label16
	MOVLW 0x01
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	MOVLW 0xBF
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xBF
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	GOTO	label12
label17
	MOVLW 0xBF
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xBF
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF CompTempVar2215
	MOVLW 0x40
	IORWF CompTempVar2215, W
	MOVWF gbl_portc
	MOVLW 0x02
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
label18
	CLRF CompTempVar2214
	MOVF gbl_FCV_QUANT, W
	SUBWF gbl_FCV_LOOP, W
	BTFSC STATUS,Z
	INCF CompTempVar2214, F
	MOVF CompTempVar2214, F
	BTFSS STATUS,Z
	GOTO	label19
	CALL FCM_row2_f_00057
	MOVLW 0xFF
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xFF
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0x5A
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CALL FCM_row2_s_0005A
	MOVLW 0x02
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	INCF gbl_FCV_LOOP, W
	MOVWF gbl_FCV_LOOP
	GOTO	label18
label19
	MOVLW 0x01
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	MOVLW 0xBF
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xBF
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	GOTO	label12
label20
	MOVLW 0xBF
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xBF
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF CompTempVar2218
	MOVLW 0x40
	IORWF CompTempVar2218, W
	MOVWF gbl_portc
	MOVLW 0x02
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
label21
	CLRF CompTempVar2217
	MOVF gbl_FCV_QUANT, W
	SUBWF gbl_FCV_LOOP, W
	BTFSC STATUS,Z
	INCF CompTempVar2217, F
	MOVF CompTempVar2217, F
	BTFSS STATUS,Z
	GOTO	label22
	CALL FCM_row3_f_00053
	MOVLW 0xFF
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xFF
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0x5A
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CALL FCM_row3_s_0005B
	MOVLW 0x02
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	INCF gbl_FCV_LOOP, W
	MOVWF gbl_FCV_LOOP
	GOTO	label21
label22
	MOVLW 0x01
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	MOVLW 0xBF
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xBF
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	GOTO	label12
label23
	MOVLW 0xBF
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xBF
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF CompTempVar2221
	MOVLW 0x40
	IORWF CompTempVar2221, W
	MOVWF gbl_portc
	MOVLW 0x02
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
label24
	CLRF CompTempVar2220
	MOVF gbl_FCV_QUANT, W
	SUBWF gbl_FCV_LOOP, W
	BTFSC STATUS,Z
	INCF CompTempVar2220, F
	MOVF CompTempVar2220, F
	BTFSS STATUS,Z
	GOTO	label25
	CALL FCM_row4_f_00054
	MOVLW 0xFF
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xFF
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0x5A
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CALL FCM_row4_s_0005C
	MOVLW 0x02
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	INCF gbl_FCV_LOOP, W
	MOVWF gbl_FCV_LOOP
	GOTO	label24
label25
	MOVLW 0x01
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	MOVLW 0xBF
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xBF
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	GOTO	label12
; } main function end

	ORG 0x00000263
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
	CLRF gbl_FCV_LOOP
	CLRF gbl_FCV_DELAY
	CLRF gbl_FCV_DELAY+D'1'
	BCF PCLATH,3
	BCF PCLATH,4
	GOTO	main
	ORG 0x0000028E
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
