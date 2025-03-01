;/////////////////////////////////////////////////////////////////////////////////
;// Code Generator: BoostC Compiler - http://www.sourceboost.com
;// Version       : 7.03
;// License Type  : Pro License
;// Limitations   : PIC12,PIC16 max code size:Unlimited, max RAM banks:Unlimited
;/////////////////////////////////////////////////////////////////////////////////

	include "P16F887.inc"
; Heap block 0, size:111 (0x00000110 - 0x0000017E)
__HEAP_BLOCK0_BANK               EQU	0x00000002
__HEAP_BLOCK0_START_OFFSET       EQU	0x00000010
__HEAP_BLOCK0_END_OFFSET         EQU	0x0000007E
; Heap block 1, size:96 (0x00000190 - 0x000001EF)
__HEAP_BLOCK1_BANK               EQU	0x00000003
__HEAP_BLOCK1_START_OFFSET       EQU	0x00000010
__HEAP_BLOCK1_END_OFFSET         EQU	0x0000006F
; Heap block 2, size:80 (0x000000A0 - 0x000000EF)
__HEAP_BLOCK2_BANK               EQU	0x00000001
__HEAP_BLOCK2_START_OFFSET       EQU	0x00000020
__HEAP_BLOCK2_END_OFFSET         EQU	0x0000006F
; Heap block 3, size:19 (0x0000005D - 0x0000006F)
__HEAP_BLOCK3_BANK               EQU	0x00000000
__HEAP_BLOCK3_START_OFFSET       EQU	0x0000005D
__HEAP_BLOCK3_END_OFFSET         EQU	0x0000006F
__div_8_8_00000_arg_a            EQU	0x00000058 ; bytes:1
__div_8_8_00000_arg_b            EQU	0x00000059 ; bytes:1
CompTempVarRet218                EQU	0x0000005C ; bytes:1
__div_8_8_00000_1_r              EQU	0x0000005A ; bytes:1
__div_8_8_00000_1_i              EQU	0x0000005B ; bytes:1
__rem_8_8_00000_arg_a            EQU	0x00000058 ; bytes:1
__rem_8_8_00000_arg_b            EQU	0x00000059 ; bytes:1
CompTempVarRet220                EQU	0x0000005C ; bytes:1
__rem_8_8_00000_1_c              EQU	0x0000005A ; bytes:1
__rem_8_8_00000_1_i              EQU	0x0000005B ; bytes:1
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
gbl_FCV_HOME_ONES                EQU	0x00000042 ; bytes:1
gbl_FCV_DAT                      EQU	0x00000043 ; bit:0
gbl_FCV_SECONDS                  EQU	0x00000044 ; bytes:1
gbl_FCV_PERIOD                   EQU	0x00000045 ; bytes:1
gbl_FCV_MINUTES                  EQU	0x00000046 ; bytes:1
gbl_FCV_HOME_FOUL                EQU	0x00000047 ; bytes:1
gbl_FCV_MINUTE_TENS              EQU	0x00000048 ; bytes:1
gbl_FCV_AWAY_TENS                EQU	0x00000049 ; bytes:1
gbl_FCV_BITS                     EQU	0x0000004A ; bytes:1
gbl_FCV_SECONDS_TENS             EQU	0x0000004B ; bytes:1
gbl_FCV_SCORE_AWAY               EQU	0x0000004C ; bytes:1
gbl_FCV_DIGIT                    EQU	0x0000004D ; bytes:1
gbl_FCV_HOME_HUNDRED             EQU	0x00000043 ; bit:1
gbl_FCV_MINUTE_ONES              EQU	0x0000004E ; bytes:1
gbl_FCV_AWAY_ONES                EQU	0x0000004F ; bytes:1
gbl_FCV_HOME_TENS                EQU	0x00000050 ; bytes:1
gbl_FCV_SECONDS_ONES             EQU	0x00000051 ; bytes:1
gbl_FCV_SCORE_HOME               EQU	0x00000052 ; bytes:1
gbl_FCV_AWAY_HUNDREDS            EQU	0x00000043 ; bit:2
gbl_FCV_IHAP                     EQU	0x00000053 ; bytes:1
gbl_FCV_AWAY_FOUL                EQU	0x00000054 ; bytes:1
gbl_FCLV_LOOP1                   EQU	0x00000055 ; bytes:1
gbl_FCLV_LOOP2                   EQU	0x00000056 ; bytes:1
gbl_FCLV_LOOP3                   EQU	0x00000057 ; bytes:1
CompTempVar2188                  EQU	0x00000058 ; bytes:1
CompTempVar2189                  EQU	0x00000058 ; bytes:1
CompTempVar2190                  EQU	0x00000059 ; bytes:1
CompTempVar2191                  EQU	0x00000058 ; bytes:1
CompTempVar2192                  EQU	0x00000058 ; bytes:1
CompTempVar2194                  EQU	0x00000058 ; bytes:1
CompTempVar2195                  EQU	0x00000058 ; bytes:1
CompTempVar2196                  EQU	0x00000058 ; bytes:1
CompTempVar2197                  EQU	0x00000058 ; bytes:1
CompTempVar2198                  EQU	0x00000058 ; bytes:1
CompTempVar2199                  EQU	0x00000059 ; bytes:1
CompTempVar2200                  EQU	0x00000058 ; bytes:1
CompTempVar2201                  EQU	0x00000058 ; bytes:1
CompTempVar2203                  EQU	0x00000058 ; bytes:1
CompTempVar2204                  EQU	0x00000059 ; bytes:1
CompTempVar2205                  EQU	0x00000058 ; bytes:1
CompTempVar2206                  EQU	0x00000058 ; bytes:1
CompTempVar2208                  EQU	0x00000058 ; bytes:1
CompTempVar2209                  EQU	0x00000058 ; bytes:1
CompTempVar2210                  EQU	0x00000058 ; bytes:1
CompTempVar2211                  EQU	0x00000058 ; bytes:1
CompTempVar2212                  EQU	0x00000058 ; bytes:1
CompTempVar2213                  EQU	0x00000058 ; bytes:1
delay_ms_00000_arg_del           EQU	0x00000058 ; bytes:1
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
delay_ms_00000
; { delay_ms ; function begin
	MOVF delay_ms_00000_arg_del, F
	BTFSS STATUS,Z
	GOTO	label1
	RETURN
label1
	MOVLW 0xF9
label2
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
	GOTO	label2
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
	GOTO	label1
	RETURN
; } delay_ms function end

	ORG 0x0000003C
FCM_time_d_00056
; { FCM_time_data_register ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	CLRF gbl_FCLV_LOOP2
label3
	MOVLW 0x08
	SUBWF gbl_FCLV_LOOP2, W
	BTFSC STATUS,C
	RETURN
	MOVLW 0x01
	ANDWF gbl_FCV_BITS, W
	MOVWF CompTempVar2198
	CLRF CompTempVar2199
	MOVF CompTempVar2198, F
	BTFSS STATUS,Z
	BSF CompTempVar2199,0
	BCF gbl_FCV_DAT,0
	MOVF CompTempVar2199, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DAT,0
	MOVLW 0xFB
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	BCF STATUS, RP0
	BTFSS gbl_FCV_DAT,0
	GOTO	label4
	MOVLW 0xFB
	ANDWF gbl_portc, W
	MOVWF CompTempVar2200
	MOVLW 0x04
	IORWF CompTempVar2200, W
	MOVWF gbl_portc
	GOTO	label5
label4
	MOVLW 0xFB
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label5
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF CompTempVar2201
	MOVLW 0x01
	IORWF CompTempVar2201, W
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
	INCF gbl_FCLV_LOOP2, F
	GOTO	label3
; } FCM_time_data_register function end

	ORG 0x00000077
FCM_score__00053
; { FCM_score_data_register ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	CLRF gbl_FCLV_LOOP1
label6
	MOVLW 0x08
	SUBWF gbl_FCLV_LOOP1, W
	BTFSC STATUS,C
	RETURN
	MOVLW 0x01
	ANDWF gbl_FCV_BITS, W
	MOVWF CompTempVar2189
	CLRF CompTempVar2190
	MOVF CompTempVar2189, F
	BTFSS STATUS,Z
	BSF CompTempVar2190,0
	BCF gbl_FCV_DAT,0
	MOVF CompTempVar2190, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DAT,0
	MOVLW 0xF7
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	BCF STATUS, RP0
	BTFSS gbl_FCV_DAT,0
	GOTO	label7
	MOVLW 0xF7
	ANDWF gbl_portc, W
	MOVWF CompTempVar2191
	MOVLW 0x08
	IORWF CompTempVar2191, W
	MOVWF gbl_portc
	GOTO	label8
label7
	MOVLW 0xF7
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label8
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF CompTempVar2192
	MOVLW 0x01
	IORWF CompTempVar2192, W
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
	INCF gbl_FCLV_LOOP1, F
	GOTO	label6
; } FCM_score_data_register function end

	ORG 0x000000B2
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

	ORG 0x000000C4
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

	ORG 0x000000D9
FCM_foulpe_00057
; { FCM_foulperiod_data_register ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	CLRF gbl_FCLV_LOOP3
label9
	MOVLW 0x08
	SUBWF gbl_FCLV_LOOP3, W
	BTFSC STATUS,C
	RETURN
	MOVLW 0x01
	ANDWF gbl_FCV_BITS, W
	MOVWF CompTempVar2203
	CLRF CompTempVar2204
	MOVF CompTempVar2203, F
	BTFSS STATUS,Z
	BSF CompTempVar2204,0
	BCF gbl_FCV_DAT,0
	MOVF CompTempVar2204, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DAT,0
	MOVLW 0xEF
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	BCF STATUS, RP0
	BTFSS gbl_FCV_DAT,0
	GOTO	label10
	MOVLW 0xEF
	ANDWF gbl_portc, W
	MOVWF CompTempVar2205
	MOVLW 0x10
	IORWF CompTempVar2205, W
	MOVWF gbl_portc
	GOTO	label11
label10
	MOVLW 0xEF
	ANDWF gbl_portc, W
	MOVWF gbl_portc
label11
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisc, W
	MOVWF gbl_trisc
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portc, W
	MOVWF CompTempVar2206
	MOVLW 0x01
	IORWF CompTempVar2206, W
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
	INCF gbl_FCLV_LOOP3, F
	GOTO	label9
; } FCM_foulperiod_data_register function end

	ORG 0x00000114
FCM_data_b_00052
; { FCM_data_bank ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVF gbl_FCV_DIGIT, W
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label12
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label13
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label14
	XORLW 0x07
	BTFSC STATUS,Z
	GOTO	label15
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label16
	XORLW 0x03
	BTFSC STATUS,Z
	GOTO	label17
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label18
	XORLW 0x0F
	BTFSC STATUS,Z
	GOTO	label19
	XORLW 0x01
	BTFSC STATUS,Z
	GOTO	label20
	XORLW 0x09
	BTFSC STATUS,Z
	GOTO	label21
	RETURN
label12
	MOVLW 0x06
	MOVWF gbl_FCV_BITS
	RETURN
label13
	MOVLW 0x5B
	MOVWF gbl_FCV_BITS
	RETURN
label14
	MOVLW 0x4F
	MOVWF gbl_FCV_BITS
	RETURN
label15
	MOVLW 0x66
	MOVWF gbl_FCV_BITS
	RETURN
label16
	MOVLW 0x6D
	MOVWF gbl_FCV_BITS
	RETURN
label17
	MOVLW 0x7D
	MOVWF gbl_FCV_BITS
	RETURN
label18
	MOVLW 0x07
	MOVWF gbl_FCV_BITS
	RETURN
label19
	MOVLW 0x7F
	MOVWF gbl_FCV_BITS
	RETURN
label20
	MOVLW 0x6F
	MOVWF gbl_FCV_BITS
	RETURN
label21
	MOVLW 0x3F
	MOVWF gbl_FCV_BITS
	RETURN
; } FCM_data_bank function end

	ORG 0x00000154
__rem_8_8_00000
; { __rem_8_8 ; function begin
	CLRF CompTempVarRet220
	CLRF __rem_8_8_00000_1_c
	CLRF __rem_8_8_00000_1_i
label22
	BTFSC __rem_8_8_00000_1_i,3
	RETURN
	BCF STATUS,C
	RLF __rem_8_8_00000_1_c, F
	RLF __rem_8_8_00000_arg_a, F
	RLF CompTempVarRet220, F
	MOVF __rem_8_8_00000_arg_b, W
	SUBWF CompTempVarRet220, W
	BTFSS STATUS,C
	GOTO	label23
	MOVWF CompTempVarRet220
	BSF __rem_8_8_00000_1_c,0
label23
	INCF __rem_8_8_00000_1_i, F
	GOTO	label22
; } __rem_8_8 function end

	ORG 0x00000165
__div_8_8_00000
; { __div_8_8 ; function begin
	CLRF __div_8_8_00000_1_r
	CLRF CompTempVarRet218
	CLRF __div_8_8_00000_1_i
label24
	BTFSC __div_8_8_00000_1_i,3
	RETURN
	BCF STATUS,C
	RLF CompTempVarRet218, F
	RLF __div_8_8_00000_arg_a, F
	RLF __div_8_8_00000_1_r, F
	MOVF __div_8_8_00000_arg_b, W
	SUBWF __div_8_8_00000_1_r, W
	BTFSS STATUS,C
	GOTO	label25
	MOVWF __div_8_8_00000_1_r
	BSF CompTempVarRet218,0
label25
	INCF __div_8_8_00000_1_i, F
	GOTO	label24
; } __div_8_8 function end

	ORG 0x00000176
FCM_foulpe_00058
; { FCM_foulperiod_display ; function begin
	CALL FCM_off_al_00051
	MOVF gbl_FCV_AWAY_FOUL, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_data_b_00052
	CALL FCM_foulpe_00057
	MOVF gbl_FCV_PERIOD, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_data_b_00052
	CALL FCM_foulpe_00057
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
	MOVWF CompTempVar2208
	MOVLW 0x02
	IORWF CompTempVar2208, W
	MOVWF gbl_portd
	MOVLW 0x01
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CALL FCM_off_al_00051
	MOVF gbl_FCV_HOME_FOUL, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_data_b_00052
	CALL FCM_foulpe_00057
	MOVF gbl_FCV_PERIOD, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_data_b_00052
	CALL FCM_foulpe_00057
	CALL FCM_latch_00000
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF CompTempVar2209
	MOVLW 0x01
	IORWF CompTempVar2209, W
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
; } FCM_foulperiod_display function end

	ORG 0x000001B7
FCM_displa_00055
; { FCM_display_time ; function begin
	CALL FCM_off_al_00051
	MOVF gbl_FCV_MINUTE_ONES, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_data_b_00052
	CALL FCM_time_d_00056
	MOVF gbl_FCV_SECONDS_ONES, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_data_b_00052
	CALL FCM_time_d_00056
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
	MOVWF CompTempVar2196
	MOVLW 0x02
	IORWF CompTempVar2196, W
	MOVWF gbl_portd
	MOVLW 0x01
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CALL FCM_off_al_00051
	MOVF gbl_FCV_MINUTE_TENS, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_data_b_00052
	CALL FCM_time_d_00056
	MOVF gbl_FCV_SECONDS_TENS, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_data_b_00052
	CALL FCM_time_d_00056
	CALL FCM_latch_00000
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF CompTempVar2197
	MOVLW 0x01
	IORWF CompTempVar2197, W
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
; } FCM_display_time function end

	ORG 0x000001F8
FCM_displa_00054
; { FCM_display_score ; function begin
	CALL FCM_off_al_00051
	MOVF gbl_FCV_AWAY_ONES, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_data_b_00052
	CALL FCM_score__00053
	MOVF gbl_FCV_HOME_ONES, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_data_b_00052
	CALL FCM_score__00053
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
	MOVWF CompTempVar2194
	MOVLW 0x02
	IORWF CompTempVar2194, W
	MOVWF gbl_portd
	MOVLW 0x01
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CALL FCM_off_al_00051
	MOVF gbl_FCV_AWAY_TENS, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_data_b_00052
	CALL FCM_score__00053
	MOVF gbl_FCV_HOME_TENS, W
	MOVWF gbl_FCV_DIGIT
	CALL FCM_data_b_00052
	CALL FCM_score__00053
	CALL FCM_latch_00000
	MOVLW 0xFE
	BSF STATUS, RP0
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xFE
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF CompTempVar2195
	MOVLW 0x01
	IORWF CompTempVar2195, W
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
; } FCM_display_score function end

	ORG 0x00000239
main
; { main ; function begin
	BSF STATUS, RP0
	BSF STATUS, RP1
	CLRF gbl_ansel
	CLRF gbl_anselh
	MOVLW 0xC0
	BCF STATUS, RP1
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
	MOVWF CompTempVar2210
	MOVLW 0x02
	IORWF CompTempVar2210, W
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
	MOVWF CompTempVar2211
	MOVLW 0x10
	IORWF CompTempVar2211, W
	MOVWF gbl_portd
	MOVLW 0xFB
	BSF STATUS, RP0
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xFB
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF CompTempVar2212
	MOVLW 0x04
	IORWF CompTempVar2212, W
	MOVWF gbl_portd
	MOVLW 0xF7
	BSF STATUS, RP0
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xF7
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF CompTempVar2213
	MOVLW 0x08
	IORWF CompTempVar2213, W
	MOVWF gbl_portd
label26
	MOVLW 0x38
	MOVWF gbl_FCV_SCORE_AWAY
	MOVLW 0x4E
	MOVWF gbl_FCV_SCORE_HOME
	MOVF gbl_FCV_SCORE_AWAY, W
	MOVWF __div_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __div_8_8_00000_arg_b
	CALL __div_8_8_00000
	MOVF CompTempVarRet218, W
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
	MOVWF gbl_FCV_HOME_ONES
	CALL FCM_displa_00054
	MOVLW 0x0C
	MOVWF gbl_FCV_MINUTES
	MOVLW 0x22
	MOVWF gbl_FCV_SECONDS
	MOVF gbl_FCV_MINUTES, W
	MOVWF __div_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __div_8_8_00000_arg_b
	CALL __div_8_8_00000
	MOVF CompTempVarRet218, W
	MOVWF gbl_FCV_MINUTE_TENS
	MOVF gbl_FCV_MINUTES, W
	MOVWF __rem_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __rem_8_8_00000_arg_b
	CALL __rem_8_8_00000
	MOVF CompTempVarRet220, W
	MOVWF gbl_FCV_MINUTE_ONES
	MOVF gbl_FCV_SECONDS, W
	MOVWF __div_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __div_8_8_00000_arg_b
	CALL __div_8_8_00000
	MOVF CompTempVarRet218, W
	MOVWF gbl_FCV_SECONDS_TENS
	MOVF gbl_FCV_SECONDS, W
	MOVWF __rem_8_8_00000_arg_a
	MOVLW 0x0A
	MOVWF __rem_8_8_00000_arg_b
	CALL __rem_8_8_00000
	MOVF CompTempVarRet220, W
	MOVWF gbl_FCV_SECONDS_ONES
	CALL FCM_displa_00055
	MOVLW 0x09
	MOVWF gbl_FCV_AWAY_FOUL
	MOVLW 0x08
	MOVWF gbl_FCV_HOME_FOUL
	MOVLW 0x03
	MOVWF gbl_FCV_PERIOD
	CALL FCM_foulpe_00058
	GOTO	label26
; } main function end

	ORG 0x000002E5
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
	CLRF gbl_FCV_HOME_ONES
	CLRF gbl_FCV_PERIOD
	CLRF gbl_FCV_MINUTES
	CLRF gbl_FCV_HOME_FOUL
	CLRF gbl_FCV_AWAY_TENS
	CLRF gbl_FCV_BITS
	CLRF gbl_FCV_SCORE_AWAY
	CLRF gbl_FCV_DIGIT
	BCF gbl_FCV_HOME_HUNDRED,1
	CLRF gbl_FCV_HOME_TENS
	BCF gbl_FCV_AWAY_HUNDREDS,2
	CLRF gbl_FCV_IHAP
	CLRF gbl_FCV_AWAY_FOUL
	BCF PCLATH,3
	BCF PCLATH,4
	GOTO	main
	ORG 0x0000031A
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
