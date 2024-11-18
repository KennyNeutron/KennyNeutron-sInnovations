;/////////////////////////////////////////////////////////////////////////////////
;// Code Generator: BoostC Compiler - http://www.sourceboost.com
;// Version       : 7.03
;// License Type  : Pro License
;// Limitations   : PIC12,PIC16 max code size:Unlimited, max RAM banks:Unlimited
;/////////////////////////////////////////////////////////////////////////////////

	include "P16F688.inc"
; Heap block 0, size:95 (0x000000A0 - 0x000000FE)
__HEAP_BLOCK0_BANK               EQU	0x00000001
__HEAP_BLOCK0_START_OFFSET       EQU	0x00000020
__HEAP_BLOCK0_END_OFFSET         EQU	0x0000007E
; Heap block 1, size:80 (0x00000120 - 0x0000016F)
__HEAP_BLOCK1_BANK               EQU	0x00000002
__HEAP_BLOCK1_START_OFFSET       EQU	0x00000020
__HEAP_BLOCK1_END_OFFSET         EQU	0x0000006F
; Heap block 2, size:39 (0x00000049 - 0x0000006F)
__HEAP_BLOCK2_BANK               EQU	0x00000000
__HEAP_BLOCK2_START_OFFSET       EQU	0x00000049
__HEAP_BLOCK2_END_OFFSET         EQU	0x0000006F
; Heap block 3, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK3_BANK               EQU	0x00000000
__HEAP_BLOCK3_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK3_END_OFFSET         EQU	0x00000000
gbl_status                       EQU	0x00000003 ; bytes:1
gbl_14_LSR                       EQU	0x00000020 ; bytes:4
gbl_float_detect_tininess        EQU	0x00000039 ; bytes:1
gbl_float_rounding_mode          EQU	0x0000003A ; bytes:1
gbl_float_exception_flags        EQU	0x0000003B ; bytes:1
gbl_15_gbl_aSig                  EQU	0x00000024 ; bytes:4
gbl_15_gbl_bSig                  EQU	0x00000028 ; bytes:4
gbl_15_gbl_zSig                  EQU	0x0000002C ; bytes:4
gbl_15_gbl_aExp                  EQU	0x0000003C ; bytes:1
gbl_15_gbl_bExp                  EQU	0x0000003D ; bytes:1
gbl_15_gbl_zExp                  EQU	0x00000037 ; bytes:2
gbl_15_gbl_aSign                 EQU	0x0000003E ; bytes:1
gbl_15_gbl_bSign                 EQU	0x0000003F ; bytes:1
gbl_15_gbl_zSign                 EQU	0x00000040 ; bytes:1
gbl_15_gbl_zSigZero              EQU	0x00000041 ; bytes:1
gbl_15_gbl_ret                   EQU	0x00000030 ; bytes:4
gbl_indf                         EQU	0x00000000 ; bytes:1
gbl_tmr0                         EQU	0x00000001 ; bytes:1
gbl_pcl                          EQU	0x00000002 ; bytes:1
gbl_fsr                          EQU	0x00000004 ; bytes:1
gbl_porta                        EQU	0x00000005 ; bytes:1
gbl_portc                        EQU	0x00000007 ; bytes:1
gbl_pclath                       EQU	0x0000000A ; bytes:1
gbl_intcon                       EQU	0x0000000B ; bytes:1
gbl_pir1                         EQU	0x0000000C ; bytes:1
gbl_tmr1l                        EQU	0x0000000E ; bytes:1
gbl_tmr1h                        EQU	0x0000000F ; bytes:1
gbl_t1con                        EQU	0x00000010 ; bytes:1
gbl_baudctl                      EQU	0x00000011 ; bytes:1
gbl_spbrgh                       EQU	0x00000012 ; bytes:1
gbl_spbrg                        EQU	0x00000013 ; bytes:1
gbl_rcreg                        EQU	0x00000014 ; bytes:1
gbl_txreg                        EQU	0x00000015 ; bytes:1
gbl_txsta                        EQU	0x00000016 ; bytes:1
gbl_rcsta                        EQU	0x00000017 ; bytes:1
gbl_wdtcon                       EQU	0x00000018 ; bytes:1
gbl_cmcon0                       EQU	0x00000019 ; bytes:1
gbl_cmcon1                       EQU	0x0000001A ; bytes:1
gbl_adresh                       EQU	0x0000001E ; bytes:1
gbl_adcon0                       EQU	0x0000001F ; bytes:1
gbl_option_reg                   EQU	0x00000081 ; bytes:1
gbl_trisa                        EQU	0x00000085 ; bytes:1
gbl_trisc                        EQU	0x00000087 ; bytes:1
gbl_pie1                         EQU	0x0000008C ; bytes:1
gbl_pcon                         EQU	0x0000008E ; bytes:1
gbl_osccon                       EQU	0x0000008F ; bytes:1
gbl_osctune                      EQU	0x00000090 ; bytes:1
gbl_ansel                        EQU	0x00000091 ; bytes:1
gbl_wpu                          EQU	0x00000095 ; bytes:1
gbl_wpua                         EQU	0x00000095 ; bytes:1
gbl_ioc                          EQU	0x00000096 ; bytes:1
gbl_ioca                         EQU	0x00000096 ; bytes:1
gbl_eedath                       EQU	0x00000097 ; bytes:1
gbl_eeadrh                       EQU	0x00000098 ; bytes:1
gbl_vrcon                        EQU	0x00000099 ; bytes:1
gbl_eedata                       EQU	0x0000009A ; bytes:1
gbl_eeadr                        EQU	0x0000009B ; bytes:1
gbl_eecon1                       EQU	0x0000009C ; bytes:1
gbl_eecon2                       EQU	0x0000009D ; bytes:1
gbl_adresl                       EQU	0x0000009E ; bytes:1
gbl_adcon1                       EQU	0x0000009F ; bytes:1
gbl_FCV_SWITCH                   EQU	0x00000042 ; bit:0
gbl_FCV_COUNTER                  EQU	0x00000043 ; bytes:1
gbl_FCV_FLAG                     EQU	0x00000042 ; bit:1
gbl_FCV_NOTIF                    EQU	0x00000044 ; bytes:1
gbl_FCLV_LOOP1                   EQU	0x00000045 ; bytes:1
CompTempVar2189                  EQU	0x00000046 ; bytes:1
CompTempVar2190                  EQU	0x00000047 ; bytes:1
CompTempVar2191                  EQU	0x00000048 ; bytes:1
CompTempVar2192                  EQU	0x00000047 ; bytes:1
CompTempVar2193                  EQU	0x00000046 ; bytes:1
CompTempVar2194                  EQU	0x00000046 ; bytes:1
CompTempVar2195                  EQU	0x00000047 ; bytes:1
CompTempVar2196                  EQU	0x00000046 ; bytes:1
CompTempVar2197                  EQU	0x00000047 ; bytes:1
CompTempVar2199                  EQU	0x00000046 ; bytes:1
CompTempVar2200                  EQU	0x00000047 ; bytes:1
CompTempVar2201                  EQU	0x00000048 ; bytes:1
delay_us_00000_arg_del           EQU	0x00000047 ; bytes:1
delay_ms_00000_arg_del           EQU	0x00000047 ; bytes:1
delay_s_00000_arg_del            EQU	0x00000046 ; bytes:1
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
FCM_int_00000
; { FCM_int ; function begin
	RETURN
; } FCM_int function end

	ORG 0x00000036
FCM_repel_00000
; { FCM_repel ; function begin
	MOVLW 0xF7
	BSF STATUS, RP0
	BCF STATUS, RP1
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xF7
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF CompTempVar2192
	MOVLW 0x08
	IORWF CompTempVar2192, W
	MOVWF gbl_portc
	MOVLW 0x03
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	MOVLW 0xF7
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xF7
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	MOVLW 0x03
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	RETURN
; } FCM_repel function end

	ORG 0x00000051
FCM_Switch_00051
; { FCM_Switch_Check ; function begin
label5
	BCF STATUS, RP0
	BCF STATUS, RP1
	CLRF CompTempVar2189
	BTFSC gbl_FCV_SWITCH,0
	INCF CompTempVar2189, F
	MOVF CompTempVar2189, F
	BTFSS STATUS,Z
	RETURN
	MOVLW 0x04
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x04
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2190
	CLRF CompTempVar2191
	MOVLW 0x04
	SUBWF CompTempVar2190, W
	BTFSC STATUS,Z
	INCF CompTempVar2191, F
	BCF gbl_FCV_SWITCH,0
	MOVF CompTempVar2191, W
	BTFSS STATUS,Z
	BSF gbl_FCV_SWITCH,0
	GOTO	label5
; } FCM_Switch_Check function end

	ORG 0x0000006B
FCD_LED1_L_00055
; { FCD_LED1_LEDOff ; function begin
	BSF STATUS, RP0
	BCF STATUS, RP1
	BCF gbl_trisc,4
	BCF STATUS, RP0
	BSF gbl_portc,4
	RETURN
; } FCD_LED1_LEDOff function end

	ORG 0x00000071
FCD_LED1_L_00054
; { FCD_LED1_LEDOn ; function begin
	BSF STATUS, RP0
	BCF STATUS, RP1
	BCF gbl_trisc,4
	BCF STATUS, RP0
	BCF gbl_portc,4
	RETURN
; } FCD_LED1_LEDOn function end

	ORG 0x00000077
FCD_LED0_L_00053
; { FCD_LED0_LEDOff ; function begin
	BSF STATUS, RP0
	BCF STATUS, RP1
	BCF gbl_trisc,5
	BCF STATUS, RP0
	BSF gbl_portc,5
	RETURN
; } FCD_LED0_LEDOff function end

	ORG 0x0000007D
FCD_LED0_L_00052
; { FCD_LED0_LEDOn ; function begin
	BSF STATUS, RP0
	BCF STATUS, RP1
	BCF gbl_trisc,5
	BCF STATUS, RP0
	BCF gbl_portc,5
	RETURN
; } FCD_LED0_LEDOn function end

	ORG 0x00000083
main
; { main ; function begin
	BSF STATUS, RP0
	BCF STATUS, RP1
	CLRF gbl_ansel
	MOVLW 0x07
	BCF STATUS, RP0
	MOVWF gbl_cmcon0
	MOVLW 0xC0
	BSF STATUS, RP0
	MOVWF gbl_option_reg
	BSF gbl_option_reg,6
	BSF gbl_intcon,7
	BSF gbl_intcon,4
	MOVLW 0x64
	BCF STATUS, RP0
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	SLEEP
	CALL FCM_Switch_00051
	BSF gbl_FCV_SWITCH,0
	BCF gbl_FCV_FLAG,1
	CLRF gbl_FCV_COUNTER
	CLRF gbl_FCV_NOTIF
label6
	MOVLW 0xFD
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFD
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF gbl_portc
	MOVLW 0xFB
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFB
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF CompTempVar2193
	MOVLW 0x04
	IORWF CompTempVar2193, W
	MOVWF gbl_portc
	MOVLW 0x04
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x04
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2194
	CLRF CompTempVar2195
	MOVLW 0x04
	SUBWF CompTempVar2194, W
	BTFSC STATUS,Z
	INCF CompTempVar2195, F
	BCF gbl_FCV_SWITCH,0
	MOVF CompTempVar2195, W
	BTFSS STATUS,Z
	BSF gbl_FCV_SWITCH,0
	BTFSC gbl_FCV_SWITCH,0
	GOTO	label10
	CALL FCD_LED1_L_00054
	MOVLW 0x02
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	MOVLW 0x04
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x04
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2196
	CLRF CompTempVar2197
	MOVLW 0x04
	SUBWF CompTempVar2196, W
	BTFSC STATUS,Z
	INCF CompTempVar2197, F
	BCF gbl_FCV_SWITCH,0
	MOVF CompTempVar2197, W
	BTFSS STATUS,Z
	BSF gbl_FCV_SWITCH,0
	BTFSC gbl_FCV_SWITCH,0
	GOTO	label9
	CALL FCD_LED0_L_00052
	MOVLW 0x01
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	CALL FCD_LED0_L_00053
	CALL FCD_LED1_L_00055
	CALL FCM_Switch_00051
	BSF STATUS, RP0
	BSF gbl_option_reg,6
	BSF gbl_intcon,7
	BSF gbl_intcon,4
	MOVLW 0x03
	BCF STATUS, RP0
	MOVWF delay_s_00000_arg_del
	CALL delay_s_00000
	CALL FCD_LED0_L_00052
	MOVLW 0x64
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CALL FCD_LED0_L_00053
	SLEEP
	CLRF gbl_FCLV_LOOP1
label7
	MOVLW 0x0A
	SUBWF gbl_FCLV_LOOP1, W
	BTFSC STATUS,C
	GOTO	label8
	CALL FCD_LED1_L_00054
	MOVLW 0x64
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CALL FCD_LED1_L_00055
	MOVLW 0x64
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	INCF gbl_FCLV_LOOP1, F
	GOTO	label7
label8
	CALL FCM_Switch_00051
	CLRF gbl_FCV_COUNTER
	CLRF gbl_FCV_NOTIF
	GOTO	label6
label9
	CALL FCD_LED1_L_00055
	GOTO	label6
label10
	BCF gbl_intcon,4
label11
	CLRF CompTempVar2199
	BTFSS gbl_FCV_SWITCH,0
	INCF CompTempVar2199, F
	MOVF CompTempVar2199, F
	BTFSS STATUS,Z
	GOTO	label6
	CALL FCM_repel_00000
	MOVLW 0x04
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x04
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2200
	CLRF CompTempVar2201
	MOVLW 0x04
	SUBWF CompTempVar2200, W
	BTFSC STATUS,Z
	INCF CompTempVar2201, F
	BCF gbl_FCV_SWITCH,0
	MOVF CompTempVar2201, W
	BTFSS STATUS,Z
	BSF gbl_FCV_SWITCH,0
	GOTO	label11
; } main function end

	ORG 0x0000011A
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
	CLRF gbl_FCV_COUNTER
	CLRF gbl_FCV_NOTIF
	BCF PCLATH,3
	BCF PCLATH,4
	GOTO	main
	ORG 0x00000144
interrupt
; { interrupt ; function begin
	BTFSS gbl_intcon,1
	GOTO	label13
	BTFSS gbl_intcon,4
	GOTO	label13
	CALL FCM_int_00000
	BCF gbl_intcon,1
label13
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
	DW 0x33F4
	END
