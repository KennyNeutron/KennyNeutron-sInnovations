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
; Heap block 2, size:32 (0x00000050 - 0x0000006F)
__HEAP_BLOCK2_BANK               EQU	0x00000000
__HEAP_BLOCK2_START_OFFSET       EQU	0x00000050
__HEAP_BLOCK2_END_OFFSET         EQU	0x0000006F
; Heap block 3, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK3_BANK               EQU	0x00000000
__HEAP_BLOCK3_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK3_END_OFFSET         EQU	0x00000000
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
gbl_FCV_QUE1                     EQU	0x00000039 ; bytes:2
gbl_FCV_QUE2                     EQU	0x0000003B ; bytes:2
gbl_FCV_QUE3                     EQU	0x0000003D ; bytes:2
gbl_FCV_WIN                      EQU	0x0000004A ; bytes:1
gbl_FCV_DIGIT                    EQU	0x0000004B ; bytes:1
gbl_FCV_IHAP                     EQU	0x0000003F ; bytes:2
FC_CAL_UAR_00064_arg_nChar       EQU	0x0000004E ; bytes:2
FCD_RS2320_00068_arg_nChar       EQU	0x0000004C ; bytes:2
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
FC_CAL_UAR_00064
; { FC_CAL_UART_Send_1 ; function begin
label1
	BTFSS gbl_pir1,4
	GOTO	label1
	MOVF FC_CAL_UAR_00064_arg_nChar, W
	MOVWF gbl_txreg
	RETURN
; } FC_CAL_UART_Send_1 function end

	ORG 0x00000015
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

	ORG 0x00000024
FCD_RS2320_00068
; { FCD_RS2320_SendRS232Char ; function begin
	MOVF FCD_RS2320_00068_arg_nChar, W
	MOVWF FC_CAL_UAR_00064_arg_nChar
	MOVF FCD_RS2320_00068_arg_nChar+D'1', W
	MOVWF FC_CAL_UAR_00064_arg_nChar+D'1'
	CALL FC_CAL_UAR_00064
	RETURN
; } FCD_RS2320_SendRS232Char function end

	ORG 0x0000002A
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
label2
	MOVLW 0x61
	MOVWF FCD_RS2320_00068_arg_nChar
	CLRF FCD_RS2320_00068_arg_nChar+D'1'
	CALL FCD_RS2320_00068
	GOTO	label2
; } main function end

	ORG 0x0000005E
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
	ORG 0x0000008E
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
