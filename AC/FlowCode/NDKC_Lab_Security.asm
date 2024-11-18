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
; Heap block 3, size:10 (0x00000066 - 0x0000006F)
__HEAP_BLOCK3_BANK               EQU	0x00000000
__HEAP_BLOCK3_START_OFFSET       EQU	0x00000066
__HEAP_BLOCK3_END_OFFSET         EQU	0x0000006F
__div_16_1_00003_arg_a           EQU	0x00000051 ; bytes:2
__div_16_1_00003_arg_b           EQU	0x00000053 ; bytes:2
CompTempVarRet214                EQU	0x0000005A ; bytes:2
__div_16_1_00003_1_r             EQU	0x00000057 ; bytes:2
__div_16_1_00003_1_i             EQU	0x00000059 ; bytes:1
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
gbl_FCV_EQ1_SE1                  EQU	0x00000042 ; bit:0
gbl_FCV_EQ2_SE1                  EQU	0x00000042 ; bit:1
gbl_FCV_EQ1_SE2                  EQU	0x00000042 ; bit:2
gbl_FCV_EQ6_FLAG                 EQU	0x00000042 ; bit:3
gbl_FCV_EQ2_ERRORFLAG            EQU	0x00000042 ; bit:4
gbl_FCV_EQ3_SE1                  EQU	0x00000042 ; bit:5
gbl_FCV_EQ2_SE2                  EQU	0x00000042 ; bit:6
gbl_FCV_EQ5_ERRORFLAG            EQU	0x00000042 ; bit:7
gbl_FCV_EQ5_FLAG                 EQU	0x00000043 ; bit:0
gbl_FCV_EQ3_SE2                  EQU	0x00000043 ; bit:1
gbl_FCV_EQ4_FLAG                 EQU	0x00000043 ; bit:2
gbl_FCV_EQ4_SE1                  EQU	0x00000043 ; bit:3
gbl_FCV_EQ3_FLAG                 EQU	0x00000043 ; bit:4
gbl_FCV_EQ4_SE2                  EQU	0x00000043 ; bit:5
gbl_FCV_EQ5_SE1                  EQU	0x00000043 ; bit:6
gbl_FCV_EQ2_FLAG                 EQU	0x00000043 ; bit:7
gbl_FCV_RX                       EQU	0x00000044 ; bytes:1
gbl_FCV_DOORLOCK                 EQU	0x00000045 ; bit:0
gbl_FCV_SIREN_FLAG               EQU	0x00000045 ; bit:1
gbl_FCV_EQ5_SE2                  EQU	0x00000045 ; bit:2
gbl_FCV_EQ6_SE1                  EQU	0x00000045 ; bit:3
gbl_FCV_FBIT                     EQU	0x00000046 ; bytes:1
gbl_FCV_EQ1_FLAG                 EQU	0x00000045 ; bit:4
gbl_FCV_EQ6_SE2                  EQU	0x00000045 ; bit:5
gbl_FCV_EQ1_ERRORFLAG            EQU	0x00000045 ; bit:6
gbl_FCV_EQ4_ERRORFLAG            EQU	0x00000045 ; bit:7
gbl_FCV_FLAG                     EQU	0x00000047 ; bit:0
gbl_FCV_EQ3_ERRORFLAG            EQU	0x00000047 ; bit:1
gbl_FCV_EQ6_ERRORFLAG            EQU	0x00000047 ; bit:2
gbl_FCV_SIREN                    EQU	0x00000047 ; bit:3
Wdt_Delay__0003E_arg_delay       EQU	0x0000004E ; bytes:1
Wdt_Delay__0003E_1_i             EQU	0x0000004F ; bytes:1
CompTempVar2188                  EQU	0x0000004C ; bytes:1
CompTempVar2190                  EQU	0x0000004D ; bytes:1
CompTempVar2191                  EQU	0x0000004E ; bytes:1
CompTempVar2192                  EQU	0x00000051 ; bytes:4
CompTempVar2194                  EQU	0x0000004F ; bytes:1
CompTempVar2196                  EQU	0x00000050 ; bytes:1
CompTempVar2197                  EQU	0x00000051 ; bytes:1
CompTempVar2198                  EQU	0x00000054 ; bytes:4
CompTempVar2200                  EQU	0x00000052 ; bytes:1
CompTempVar2201                  EQU	0x00000053 ; bytes:1
CompTempVar2202                  EQU	0x00000054 ; bytes:1
CompTempVar2203                  EQU	0x00000055 ; bytes:1
CompTempVar2204                  EQU	0x00000056 ; bytes:4
CompTempVar2210                  EQU	0x0000004C ; bytes:1
CompTempVar2212                  EQU	0x0000004D ; bytes:1
CompTempVar2213                  EQU	0x0000004E ; bytes:1
CompTempVar2214                  EQU	0x0000004F ; bytes:4
CompTempVar2216                  EQU	0x0000004F ; bytes:1
CompTempVar2218                  EQU	0x00000050 ; bytes:1
CompTempVar2219                  EQU	0x00000051 ; bytes:1
CompTempVar2220                  EQU	0x00000056 ; bytes:4
CompTempVar2222                  EQU	0x00000052 ; bytes:1
CompTempVar2223                  EQU	0x00000053 ; bytes:1
CompTempVar2224                  EQU	0x00000054 ; bytes:1
CompTempVar2225                  EQU	0x00000055 ; bytes:1
CompTempVar2226                  EQU	0x00000056 ; bytes:4
CompTempVar2228                  EQU	0x0000004C ; bytes:1
CompTempVar2230                  EQU	0x0000004D ; bytes:1
CompTempVar2231                  EQU	0x0000004E ; bytes:1
CompTempVar2232                  EQU	0x0000004F ; bytes:4
CompTempVar2234                  EQU	0x0000004F ; bytes:1
CompTempVar2236                  EQU	0x00000050 ; bytes:1
CompTempVar2237                  EQU	0x00000051 ; bytes:1
CompTempVar2238                  EQU	0x00000056 ; bytes:4
CompTempVar2240                  EQU	0x00000052 ; bytes:1
CompTempVar2241                  EQU	0x00000053 ; bytes:1
CompTempVar2242                  EQU	0x00000054 ; bytes:1
CompTempVar2243                  EQU	0x00000055 ; bytes:1
CompTempVar2244                  EQU	0x00000056 ; bytes:4
CompTempVar2246                  EQU	0x00000048 ; bytes:1
CompTempVar2247                  EQU	0x00000049 ; bytes:1
CompTempVar2248                  EQU	0x0000004A ; bytes:1
CompTempVar2249                  EQU	0x0000004B ; bytes:1
CompTempVar2250                  EQU	0x0000004C ; bytes:1
CompTempVar2251                  EQU	0x0000004D ; bytes:1
CompTempVar2252                  EQU	0x0000004E ; bytes:1
CompTempVar2253                  EQU	0x0000004F ; bytes:1
CompTempVar2254                  EQU	0x0000004E ; bytes:1
CompTempVar2255                  EQU	0x0000004F ; bytes:1
CompTempVar2256                  EQU	0x0000004E ; bytes:1
CompTempVar2257                  EQU	0x0000004F ; bytes:1
CompTempVar2258                  EQU	0x0000004E ; bytes:1
CompTempVar2259                  EQU	0x0000004F ; bytes:1
CompTempVar2260                  EQU	0x0000004E ; bytes:1
CompTempVar2261                  EQU	0x0000004F ; bytes:1
CompTempVar2262                  EQU	0x0000004E ; bytes:1
CompTempVar2263                  EQU	0x0000004F ; bytes:1
CompTempVar2264                  EQU	0x0000004C ; bytes:1
CompTempVar2265                  EQU	0x0000004D ; bytes:1
CompTempVar2266                  EQU	0x0000004E ; bytes:1
CompTempVar2267                  EQU	0x0000004F ; bytes:1
CompTempVar2268                  EQU	0x00000050 ; bytes:1
CompTempVar2269                  EQU	0x00000051 ; bytes:1
CompTempVar2270                  EQU	0x00000052 ; bytes:1
CompTempVar2271                  EQU	0x00000053 ; bytes:1
CompTempVar2272                  EQU	0x00000054 ; bytes:1
CompTempVar2273                  EQU	0x00000055 ; bytes:1
CompTempVar2274                  EQU	0x00000056 ; bytes:1
CompTempVar2275                  EQU	0x00000057 ; bytes:1
CompTempVar2276                  EQU	0x00000058 ; bytes:1
CompTempVar2277                  EQU	0x00000059 ; bytes:1
CompTempVar2278                  EQU	0x00000058 ; bytes:1
CompTempVar2279                  EQU	0x00000059 ; bytes:1
CompTempVar2280                  EQU	0x00000058 ; bytes:1
CompTempVar2281                  EQU	0x00000059 ; bytes:1
CompTempVar2282                  EQU	0x00000058 ; bytes:1
CompTempVar2283                  EQU	0x00000059 ; bytes:1
CompTempVar2284                  EQU	0x00000058 ; bytes:1
CompTempVar2285                  EQU	0x00000059 ; bytes:1
CompTempVar2286                  EQU	0x00000058 ; bytes:1
CompTempVar2287                  EQU	0x00000059 ; bytes:1
CompTempVar2288                  EQU	0x0000005E ; bytes:4
CompTempVar2290                  EQU	0x00000058 ; bytes:1
CompTempVar2291                  EQU	0x00000059 ; bytes:1
CompTempVar2292                  EQU	0x0000005E ; bytes:4
CompTempVar2294                  EQU	0x0000005A ; bytes:1
CompTempVar2295                  EQU	0x0000005B ; bytes:1
CompTempVar2296                  EQU	0x0000005E ; bytes:4
CompTempVar2298                  EQU	0x00000058 ; bytes:4
CompTempVar2300                  EQU	0x00000058 ; bytes:1
CompTempVar2301                  EQU	0x00000059 ; bytes:1
CompTempVar2302                  EQU	0x0000005E ; bytes:4
CompTempVar2304                  EQU	0x0000005A ; bytes:1
CompTempVar2305                  EQU	0x0000005B ; bytes:1
CompTempVar2306                  EQU	0x0000005E ; bytes:4
CompTempVar2308                  EQU	0x00000058 ; bytes:4
CompTempVar2310                  EQU	0x00000058 ; bytes:1
CompTempVar2311                  EQU	0x00000059 ; bytes:1
CompTempVar2312                  EQU	0x0000005E ; bytes:4
CompTempVar2314                  EQU	0x0000005A ; bytes:1
CompTempVar2315                  EQU	0x0000005B ; bytes:1
CompTempVar2316                  EQU	0x0000005E ; bytes:4
CompTempVar2318                  EQU	0x00000058 ; bytes:4
CompTempVar2320                  EQU	0x00000058 ; bytes:1
CompTempVar2321                  EQU	0x00000059 ; bytes:1
CompTempVar2322                  EQU	0x0000005E ; bytes:4
CompTempVar2324                  EQU	0x0000005A ; bytes:1
CompTempVar2325                  EQU	0x0000005B ; bytes:1
CompTempVar2326                  EQU	0x0000005E ; bytes:4
CompTempVar2328                  EQU	0x00000058 ; bytes:4
CompTempVar2330                  EQU	0x00000058 ; bytes:1
CompTempVar2331                  EQU	0x00000059 ; bytes:1
CompTempVar2332                  EQU	0x0000005E ; bytes:4
CompTempVar2334                  EQU	0x0000005A ; bytes:1
CompTempVar2335                  EQU	0x0000005B ; bytes:1
CompTempVar2336                  EQU	0x0000005E ; bytes:4
CompTempVar2338                  EQU	0x00000058 ; bytes:4
CompTempVar2340                  EQU	0x00000058 ; bytes:1
CompTempVar2341                  EQU	0x00000059 ; bytes:1
CompTempVar2342                  EQU	0x0000005E ; bytes:4
CompTempVar2344                  EQU	0x0000005A ; bytes:1
CompTempVar2345                  EQU	0x0000005B ; bytes:1
CompTempVar2346                  EQU	0x0000005E ; bytes:4
CompTempVar2348                  EQU	0x0000004C ; bytes:1
CompTempVar2350                  EQU	0x0000004D ; bytes:1
CompTempVar2351                  EQU	0x0000004E ; bytes:1
CompTempVar2352                  EQU	0x0000004F ; bytes:4
CompTempVar2354                  EQU	0x0000004F ; bytes:1
CompTempVar2356                  EQU	0x00000050 ; bytes:1
CompTempVar2357                  EQU	0x00000051 ; bytes:1
CompTempVar2358                  EQU	0x00000056 ; bytes:4
CompTempVar2360                  EQU	0x00000052 ; bytes:1
CompTempVar2361                  EQU	0x00000053 ; bytes:1
CompTempVar2362                  EQU	0x00000054 ; bytes:1
CompTempVar2363                  EQU	0x00000055 ; bytes:1
CompTempVar2364                  EQU	0x00000056 ; bytes:4
FCD_LCDDis_00059_arg_in          EQU	0x0000005C ; bytes:1
FCD_LCDDis_00059_arg_mask        EQU	0x0000005D ; bytes:1
FCD_LCDDis_00059_1_pt            EQU	0x0000005E ; bytes:1
FCD_LCDDis_0005E_arg_x           EQU	0x0000004C ; bytes:1
FCD_LCDDis_0005E_arg_y           EQU	0x0000004D ; bytes:1
FCD_LCDDis_0005F_arg_Number      EQU	0x0000004C ; bytes:2
FCD_LCDDis_0005F_1_tmp_int       EQU	0x0000004E ; bytes:2
FCD_LCDDis_0005F_1_tmp_byte      EQU	0x00000050 ; bytes:1
CompTempVar2403                  EQU	0x00000051 ; bytes:1
CompTempVar2406                  EQU	0x00000055 ; bytes:1
CompTempVar2409                  EQU	0x00000055 ; bytes:1
CompTempVar2410                  EQU	0x00000056 ; bytes:1
CompTempVar2413                  EQU	0x00000051 ; bytes:1
CompTempVar2414                  EQU	0x00000055 ; bytes:1
CompTempVar2415                  EQU	0x00000056 ; bytes:1
CompTempVar2418                  EQU	0x00000051 ; bytes:1
CompTempVar2419                  EQU	0x00000055 ; bytes:1
CompTempVar2420                  EQU	0x00000056 ; bytes:1
FCD_LCDDis_00060_arg_String      EQU	0x00000048 ; bytes:2
FCD_LCDDis_00060_arg_MSZ_String  EQU	0x0000005A ; bytes:1
FCD_LCDDis_00060_1_idx           EQU	0x0000005B ; bytes:1
FC_CAL_UAR_00066_arg_nChar       EQU	0x00000064 ; bytes:2
FC_CAL_UAR_00067_arg_nTimeout    EQU	0x0000004D ; bytes:1
CompTempVarRet2431               EQU	0x00000054 ; bytes:2
FC_CAL_UAR_00067_1_retVal        EQU	0x0000004E ; bytes:1
FC_CAL_UAR_00067_1_delay1        EQU	0x0000004F ; bytes:1
FC_CAL_UAR_00067_1_regcheck      EQU	0x00000050 ; bytes:1
FC_CAL_UAR_00067_1_bWaitForever  EQU	0x00000051 ; bytes:1
FC_CAL_UAR_00067_1_rxStatus      EQU	0x00000052 ; bytes:1
FC_CAL_UAR_00067_1_dummy         EQU	0x00000053 ; bytes:1
FCD_RS2320_00052_arg_String      EQU	0x0000005C ; bytes:2
FCD_RS2320_00052_arg_MSZ_String  EQU	0x00000062 ; bytes:1
FCD_RS2320_00052_1_idx           EQU	0x00000063 ; bytes:1
FCD_RS2320_0006B_arg_nTimeout    EQU	0x0000004C ; bytes:1
CompTempVarRet2432               EQU	0x0000004D ; bytes:2
FC_CAL_PWM_00071_arg_duty        EQU	0x00000055 ; bytes:1
FC_CAL_PWM_00072_arg_period      EQU	0x00000048 ; bytes:1
FC_CAL_PWM_00072_arg_prescaler   EQU	0x00000049 ; bytes:2
FCD_PWM0_S_00053_arg_nDuty       EQU	0x00000054 ; bytes:1
CompTempVar2446                  EQU	0x0000004A ; bytes:16
CompTempVar2448                  EQU	0x0000004A ; bytes:12
CompTempVar2450                  EQU	0x00000048 ; bytes:1
CompTempVar2451                  EQU	0x00000049 ; bytes:1
CompTempVar2452                  EQU	0x0000004A ; bytes:1
CompTempVar2453                  EQU	0x0000004B ; bytes:1
CompTempVar2454                  EQU	0x0000004C ; bytes:1
CompTempVar2455                  EQU	0x0000004D ; bytes:1
CompTempVar2456                  EQU	0x0000004C ; bytes:1
CompTempVar2457                  EQU	0x0000004D ; bytes:1
CompTempVar2458                  EQU	0x0000004C ; bytes:1
CompTempVar2459                  EQU	0x0000004D ; bytes:1
CompTempVar2460                  EQU	0x0000004C ; bytes:1
CompTempVar2461                  EQU	0x0000004D ; bytes:1
CompTempVar2462                  EQU	0x0000004C ; bytes:1
CompTempVar2463                  EQU	0x0000004D ; bytes:1
CompTempVar2464                  EQU	0x0000004C ; bytes:1
CompTempVar2465                  EQU	0x0000004D ; bytes:1
CompTempVar2466                  EQU	0x0000004C ; bytes:1
CompTempVar2467                  EQU	0x0000004D ; bytes:1
CompTempVar2468                  EQU	0x0000004C ; bytes:1
CompTempVar2469                  EQU	0x0000004D ; bytes:1
CompTempVar2470                  EQU	0x0000004C ; bytes:1
CompTempVar2471                  EQU	0x0000004D ; bytes:1
CompTempVar2472                  EQU	0x0000004C ; bytes:1
CompTempVar2473                  EQU	0x0000004D ; bytes:1
CompTempVar2474                  EQU	0x0000004C ; bytes:1
CompTempVar2475                  EQU	0x0000004D ; bytes:1
CompTempVar2476                  EQU	0x0000004C ; bytes:1
CompTempVar2477                  EQU	0x0000004D ; bytes:1
CompTempVar2478                  EQU	0x0000004C ; bytes:1
CompTempVar2479                  EQU	0x0000004D ; bytes:1
CompTempVar2480                  EQU	0x0000004C ; bytes:2
CompTempVar2482                  EQU	0x0000004C ; bytes:1
delay_us_00000_arg_del           EQU	0x00000054 ; bytes:1
delay_10us_00000_arg_del         EQU	0x0000005F ; bytes:1
delay_ms_00000_arg_del           EQU	0x00000054 ; bytes:1
Int1Context                      EQU	0x0000007F ; bytes:1
Int1BContext                     EQU	0x00000034 ; bytes:3
	ORG 0x00000000
	BSF PCLATH,3
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
delay_10us_00000
; { delay_10us ; function begin
	MOVF delay_10us_00000_arg_del, F
	BTFSS STATUS,Z
	GOTO	label4
	RETURN
label4
	MOVLW 0x09
label5
	NOP
	ADDLW 0xFF
	BTFSS STATUS,Z
	GOTO	label5
	NOP
	NOP
	DECFSZ delay_10us_00000_arg_del, F
	GOTO	label4
	RETURN
; } delay_10us function end

	ORG 0x0000004F
FC_CAL_UAR_00066
; { FC_CAL_UART_Send_1 ; function begin
label6
	BTFSS gbl_pir1,4
	GOTO	label6
	MOVF FC_CAL_UAR_00066_arg_nChar, W
	MOVWF gbl_txreg
	RETURN
; } FC_CAL_UART_Send_1 function end

	ORG 0x00000054
FC_CAL_PWM_00071
; { FC_CAL_PWM_Set_Duty_8Bit_1 ; function begin
	MOVF FC_CAL_PWM_00071_arg_duty, W
	MOVWF gbl_ccpr1l
	RETURN
; } FC_CAL_PWM_Set_Duty_8Bit_1 function end

	ORG 0x00000057
__div_16_1_00003
; { __div_16_16 ; function begin
	CLRF __div_16_1_00003_1_r
	CLRF __div_16_1_00003_1_r+D'1'
	CLRF CompTempVarRet214
	CLRF CompTempVarRet214+D'1'
	CLRF __div_16_1_00003_1_i
label7
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
	GOTO	label8
	MOVF __div_16_1_00003_arg_b, W
	SUBWF __div_16_1_00003_1_r, W
label8
	BTFSS STATUS,C
	GOTO	label9
	MOVF __div_16_1_00003_arg_b, W
	SUBWF __div_16_1_00003_1_r, F
	MOVF __div_16_1_00003_arg_b+D'1', W
	BTFSS STATUS,C
	DECF __div_16_1_00003_1_r+D'1', F
	SUBWF __div_16_1_00003_1_r+D'1', F
	BSF CompTempVarRet214,0
label9
	INCF __div_16_1_00003_1_i, F
	GOTO	label7
; } __div_16_16 function end

	ORG 0x00000076
Wdt_Delay__0003E
; { Wdt_Delay_Ms ; function begin
	CLRF Wdt_Delay__0003E_1_i
label10
	MOVF Wdt_Delay__0003E_arg_delay, W
	SUBWF Wdt_Delay__0003E_1_i, W
	BTFSC STATUS,C
	RETURN
	CLRWDT
	MOVLW 0x01
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	INCF Wdt_Delay__0003E_1_i, F
	GOTO	label10
; } Wdt_Delay_Ms function end

	ORG 0x00000081
FC_CAL_UAR_00067
; { FC_CAL_UART_Receive_1 ; function begin
	MOVLW 0xFF
	MOVWF FC_CAL_UAR_00067_1_retVal
	CLRF FC_CAL_UAR_00067_1_delay1
	CLRF FC_CAL_UAR_00067_1_regcheck
	CLRF FC_CAL_UAR_00067_1_bWaitForever
	CLRF FC_CAL_UAR_00067_1_rxStatus
	CLRF FC_CAL_UAR_00067_1_dummy
	INCF FC_CAL_UAR_00067_arg_nTimeout, W
	BTFSS STATUS,Z
	GOTO	label11
	MOVLW 0x01
	MOVWF FC_CAL_UAR_00067_1_bWaitForever
label11
	MOVF FC_CAL_UAR_00067_1_rxStatus, F
	BTFSS STATUS,Z
	GOTO	label14
	MOVF FC_CAL_UAR_00067_1_bWaitForever, F
	BTFSS STATUS,Z
	GOTO	label13
	MOVF FC_CAL_UAR_00067_arg_nTimeout, F
	BTFSS STATUS,Z
	GOTO	label12
	MOVLW 0x01
	MOVWF FC_CAL_UAR_00067_1_rxStatus
	GOTO	label13
label12
	MOVLW 0x0A
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	INCF FC_CAL_UAR_00067_1_delay1, W
	MOVWF FC_CAL_UAR_00067_1_delay1
	MOVF FC_CAL_UAR_00067_1_delay1, W
	XORLW 0x64
	BTFSS STATUS,Z
	GOTO	label13
	DECF FC_CAL_UAR_00067_arg_nTimeout, W
	MOVWF FC_CAL_UAR_00067_arg_nTimeout
	CLRWDT
	CLRF FC_CAL_UAR_00067_1_delay1
label13
	MOVLW 0x20
	ANDWF gbl_pir1, W
	MOVWF FC_CAL_UAR_00067_1_regcheck
	MOVF FC_CAL_UAR_00067_1_regcheck, F
	BTFSC STATUS,Z
	GOTO	label11
	MOVLW 0x02
	MOVWF FC_CAL_UAR_00067_1_rxStatus
	GOTO	label11
label14
	MOVF FC_CAL_UAR_00067_1_rxStatus, W
	XORLW 0x02
	BTFSS STATUS,Z
	GOTO	label17
	MOVLW 0x04
	ANDWF gbl_rcsta, W
	MOVWF FC_CAL_UAR_00067_1_regcheck
	MOVF FC_CAL_UAR_00067_1_regcheck, F
	BTFSC STATUS,Z
	GOTO	label15
	MOVF gbl_rcreg, W
	MOVWF FC_CAL_UAR_00067_1_dummy
	GOTO	label17
label15
	MOVLW 0x02
	ANDWF gbl_rcsta, W
	MOVWF FC_CAL_UAR_00067_1_regcheck
	MOVF FC_CAL_UAR_00067_1_regcheck, F
	BTFSC STATUS,Z
	GOTO	label16
	BCF gbl_rcsta,4
	BSF gbl_rcsta,4
	GOTO	label17
label16
	CLRF FC_CAL_UAR_00067_1_retVal
	MOVF gbl_rcreg, W
	IORWF FC_CAL_UAR_00067_1_retVal, W
	MOVWF FC_CAL_UAR_00067_1_retVal
label17
	MOVF FC_CAL_UAR_00067_1_retVal, W
	MOVWF CompTempVarRet2431
	CLRF CompTempVarRet2431+D'1'
	RETURN
; } FC_CAL_UART_Receive_1 function end

	ORG 0x000000CD
FC_CAL_PWM_00072
; { FC_CAL_PWM_Change_Period_1 ; function begin
	MOVF FC_CAL_PWM_00072_arg_period, W
	BSF STATUS, RP0
	MOVWF gbl_pr2
	MOVLW 0x01
	BCF STATUS, RP0
	XORWF FC_CAL_PWM_00072_arg_prescaler, W
	BTFSC STATUS,Z
	MOVF FC_CAL_PWM_00072_arg_prescaler+D'1', W
	BTFSC STATUS,Z
	GOTO	label18
	MOVLW 0x04
	XORWF FC_CAL_PWM_00072_arg_prescaler, W
	BTFSC STATUS,Z
	MOVF FC_CAL_PWM_00072_arg_prescaler+D'1', W
	BTFSC STATUS,Z
	GOTO	label19
	MOVLW 0x10
	XORWF FC_CAL_PWM_00072_arg_prescaler, W
	BTFSC STATUS,Z
	MOVF FC_CAL_PWM_00072_arg_prescaler+D'1', W
	BTFSC STATUS,Z
	GOTO	label20
	RETURN
label18
	MOVLW 0x04
	MOVWF gbl_t2con
	RETURN
label19
	MOVLW 0x05
	MOVWF gbl_t2con
	RETURN
label20
	MOVLW 0x06
	MOVWF gbl_t2con
	RETURN
; } FC_CAL_PWM_Change_Period_1 function end

	ORG 0x000000ED
FC_CAL_PWM_0006F
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

	ORG 0x000000F5
FCD_RS2320_00052
; { FCD_RS2320_SendRS232String ; function begin
	CLRF FCD_RS2320_00052_1_idx
label21
	MOVF FCD_RS2320_00052_arg_MSZ_String, W
	SUBWF FCD_RS2320_00052_1_idx, W
	BTFSC STATUS,C
	RETURN
	BCF STATUS,IRP
	BTFSC FCD_RS2320_00052_arg_String+D'1',0
	BSF STATUS,IRP
	MOVF FCD_RS2320_00052_arg_String, W
	ADDWF FCD_RS2320_00052_1_idx, W
	MOVWF FSR
	MOVF INDF, F
	BTFSC STATUS,Z
	RETURN
	BCF STATUS,IRP
	BTFSC FCD_RS2320_00052_arg_String+D'1',0
	BSF STATUS,IRP
	MOVF FCD_RS2320_00052_arg_String, W
	ADDWF FCD_RS2320_00052_1_idx, W
	MOVWF FSR
	MOVF INDF, W
	MOVWF FC_CAL_UAR_00066_arg_nChar
	CLRF FC_CAL_UAR_00066_arg_nChar+D'1'
	CALL FC_CAL_UAR_00066
	INCF FCD_RS2320_00052_1_idx, F
	GOTO	label21
; } FCD_RS2320_SendRS232String function end

	ORG 0x0000010F
FCD_PWM0_S_00053
; { FCD_PWM0_SetDutyCycle ; function begin
	MOVF FCD_PWM0_S_00053_arg_nDuty, W
	MOVWF FC_CAL_PWM_00071_arg_duty
	CALL FC_CAL_PWM_00071
	RETURN
; } FCD_PWM0_SetDutyCycle function end

	ORG 0x00000113
FCD_LCDDis_00059
; { FCD_LCDDisplay0_RawSend ; function begin
	BCF gbl_portb,5
	BCF gbl_portb,4
	BCF gbl_portb,3
	BCF gbl_portb,2
	BCF gbl_portb,7
	BCF gbl_portb,6
	SWAPF FCD_LCDDis_00059_arg_in, W
	ANDLW 0x0F
	MOVWF FCD_LCDDis_00059_1_pt
	MOVLW 0x0F
	ANDWF FCD_LCDDis_00059_1_pt, F
	BTFSC FCD_LCDDis_00059_1_pt,0
	BSF gbl_portb,5
	BTFSC FCD_LCDDis_00059_1_pt,1
	BSF gbl_portb,4
	BTFSC FCD_LCDDis_00059_1_pt,2
	BSF gbl_portb,3
	BTFSC FCD_LCDDis_00059_1_pt,3
	BSF gbl_portb,2
	MOVF FCD_LCDDis_00059_arg_mask, F
	BTFSS STATUS,Z
	BSF gbl_portb,7
	MOVLW 0x0A
	MOVWF delay_10us_00000_arg_del
	CALL delay_10us_00000
	BSF gbl_portb,6
	MOVLW 0x0A
	MOVWF delay_10us_00000_arg_del
	CALL delay_10us_00000
	BCF gbl_portb,6
	MOVLW 0x0F
	ANDWF FCD_LCDDis_00059_arg_in, W
	MOVWF FCD_LCDDis_00059_1_pt
	MOVLW 0x0A
	MOVWF delay_10us_00000_arg_del
	CALL delay_10us_00000
	BCF gbl_portb,5
	BCF gbl_portb,4
	BCF gbl_portb,3
	BCF gbl_portb,2
	BCF gbl_portb,7
	BCF gbl_portb,6
	BTFSC FCD_LCDDis_00059_1_pt,0
	BSF gbl_portb,5
	BTFSC FCD_LCDDis_00059_1_pt,1
	BSF gbl_portb,4
	BTFSC FCD_LCDDis_00059_1_pt,2
	BSF gbl_portb,3
	BTFSC FCD_LCDDis_00059_1_pt,3
	BSF gbl_portb,2
	MOVF FCD_LCDDis_00059_arg_mask, F
	BTFSS STATUS,Z
	BSF gbl_portb,7
	MOVLW 0x0A
	MOVWF delay_10us_00000_arg_del
	CALL delay_10us_00000
	BSF gbl_portb,6
	MOVLW 0x0A
	MOVWF delay_10us_00000_arg_del
	CALL delay_10us_00000
	BCF gbl_portb,6
	MOVLW 0x0A
	MOVWF delay_10us_00000_arg_del
	CALL delay_10us_00000
	RETURN
; } FCD_LCDDisplay0_RawSend function end

	ORG 0x00000154
FC_CAL_UAR_00065
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

	ORG 0x00000163
FCM_init_00000
; { FCM_init ; function begin
	MOVLW 0x01
	BSF STATUS, RP0
	BCF STATUS, RP1
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x01
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2252
	CLRF CompTempVar2253
	DECF CompTempVar2252, W
	BTFSC STATUS,Z
	INCF CompTempVar2253, F
	BCF gbl_FCV_EQ1_SE1,0
	MOVF CompTempVar2253, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ1_SE1,0
	MOVLW 0x02
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x02
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2254
	CLRF CompTempVar2255
	MOVLW 0x02
	SUBWF CompTempVar2254, W
	BTFSC STATUS,Z
	INCF CompTempVar2255, F
	BCF gbl_FCV_EQ1_SE2,2
	MOVF CompTempVar2255, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ1_SE2,2
	MOVLW 0x04
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x04
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2256
	CLRF CompTempVar2257
	MOVLW 0x04
	SUBWF CompTempVar2256, W
	BTFSC STATUS,Z
	INCF CompTempVar2257, F
	BCF gbl_FCV_EQ2_SE1,1
	MOVF CompTempVar2257, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ2_SE1,1
	MOVLW 0x08
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x08
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2258
	CLRF CompTempVar2259
	MOVLW 0x08
	SUBWF CompTempVar2258, W
	BTFSC STATUS,Z
	INCF CompTempVar2259, F
	BCF gbl_FCV_EQ2_SE2,6
	MOVF CompTempVar2259, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ2_SE2,6
	MOVLW 0x10
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x10
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2260
	CLRF CompTempVar2261
	MOVLW 0x10
	SUBWF CompTempVar2260, W
	BTFSC STATUS,Z
	INCF CompTempVar2261, F
	BCF gbl_FCV_EQ3_SE1,5
	MOVF CompTempVar2261, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ3_SE1,5
	MOVLW 0x20
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x20
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2262
	CLRF CompTempVar2263
	MOVLW 0x20
	SUBWF CompTempVar2262, W
	BTFSC STATUS,Z
	INCF CompTempVar2263, F
	BCF gbl_FCV_EQ3_SE2,1
	MOVF CompTempVar2263, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ3_SE2,1
	CLRF CompTempVar2247
	BTFSC gbl_FCV_EQ1_SE1,0
	INCF CompTempVar2247, F
	CLRF CompTempVar2246
	BTFSC gbl_FCV_EQ1_SE2,2
	INCF CompTempVar2246, F
	MOVF CompTempVar2246, W
	IORWF CompTempVar2247, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ1_FLAG,4
	CLRF CompTempVar2249
	BTFSC gbl_FCV_EQ2_SE1,1
	INCF CompTempVar2249, F
	CLRF CompTempVar2248
	BTFSC gbl_FCV_EQ2_SE2,6
	INCF CompTempVar2248, F
	MOVF CompTempVar2248, W
	IORWF CompTempVar2249, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ2_FLAG,7
	CLRF CompTempVar2251
	BTFSC gbl_FCV_EQ3_SE1,5
	INCF CompTempVar2251, F
	CLRF CompTempVar2250
	BTFSC gbl_FCV_EQ3_SE2,1
	INCF CompTempVar2250, F
	MOVF CompTempVar2250, W
	IORWF CompTempVar2251, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ3_FLAG,4
	RETURN
; } FCM_init function end

	ORG 0x000001E8
FCM_check_00000
; { FCM_check ; function begin
	MOVLW 0x01
	BSF STATUS, RP0
	BCF STATUS, RP1
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x01
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2276
	CLRF CompTempVar2277
	DECF CompTempVar2276, W
	BTFSC STATUS,Z
	INCF CompTempVar2277, F
	BCF gbl_FCV_EQ1_SE1,0
	MOVF CompTempVar2277, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ1_SE1,0
	MOVLW 0x02
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x02
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2278
	CLRF CompTempVar2279
	MOVLW 0x02
	SUBWF CompTempVar2278, W
	BTFSC STATUS,Z
	INCF CompTempVar2279, F
	BCF gbl_FCV_EQ1_SE2,2
	MOVF CompTempVar2279, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ1_SE2,2
	MOVLW 0x04
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x04
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2280
	CLRF CompTempVar2281
	MOVLW 0x04
	SUBWF CompTempVar2280, W
	BTFSC STATUS,Z
	INCF CompTempVar2281, F
	BCF gbl_FCV_EQ2_SE1,1
	MOVF CompTempVar2281, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ2_SE1,1
	MOVLW 0x08
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x08
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2282
	CLRF CompTempVar2283
	MOVLW 0x08
	SUBWF CompTempVar2282, W
	BTFSC STATUS,Z
	INCF CompTempVar2283, F
	BCF gbl_FCV_EQ2_SE2,6
	MOVF CompTempVar2283, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ2_SE2,6
	MOVLW 0x10
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x10
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2284
	CLRF CompTempVar2285
	MOVLW 0x10
	SUBWF CompTempVar2284, W
	BTFSC STATUS,Z
	INCF CompTempVar2285, F
	BCF gbl_FCV_EQ3_SE1,5
	MOVF CompTempVar2285, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ3_SE1,5
	MOVLW 0x20
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x20
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2286
	CLRF CompTempVar2287
	MOVLW 0x20
	SUBWF CompTempVar2286, W
	BTFSC STATUS,Z
	INCF CompTempVar2287, F
	BCF gbl_FCV_EQ3_SE2,1
	MOVF CompTempVar2287, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ3_SE2,1
	CLRF CompTempVar2265
	BTFSS gbl_FCV_EQ1_SE1,0
	INCF CompTempVar2265, F
	CLRF CompTempVar2264
	BTFSS gbl_FCV_EQ1_SE2,2
	INCF CompTempVar2264, F
	MOVF CompTempVar2264, W
	ANDWF CompTempVar2265, W
	BTFSC STATUS,Z
	GOTO	label22
	MOVLW 0x45
	MOVWF CompTempVar2288
	MOVLW 0x31
	MOVWF CompTempVar2288+D'1'
	MOVLW 0x42
	MOVWF CompTempVar2288+D'2'
	CLRF CompTempVar2288+D'3'
	MOVLW HIGH(CompTempVar2288+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2288+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	GOTO	label24
label22
	CLRF CompTempVar2291
	BTFSC gbl_FCV_EQ1_SE1,0
	INCF CompTempVar2291, F
	CLRF CompTempVar2290
	BTFSS gbl_FCV_EQ1_SE2,2
	INCF CompTempVar2290, F
	MOVF CompTempVar2290, W
	ANDWF CompTempVar2291, W
	BTFSC STATUS,Z
	GOTO	label23
	MOVLW 0x45
	MOVWF CompTempVar2292
	MOVLW 0x31
	MOVWF CompTempVar2292+D'1'
	MOVLW 0x50
	MOVWF CompTempVar2292+D'2'
	CLRF CompTempVar2292+D'3'
	MOVLW HIGH(CompTempVar2292+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2292+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	GOTO	label24
label23
	CLRF CompTempVar2295
	BTFSS gbl_FCV_EQ1_SE1,0
	INCF CompTempVar2295, F
	CLRF CompTempVar2294
	BTFSC gbl_FCV_EQ1_SE2,2
	INCF CompTempVar2294, F
	MOVF CompTempVar2294, W
	ANDWF CompTempVar2295, W
	BTFSC STATUS,Z
	GOTO	label24
	MOVLW 0x45
	MOVWF CompTempVar2296
	MOVLW 0x31
	MOVWF CompTempVar2296+D'1'
	MOVLW 0x52
	MOVWF CompTempVar2296+D'2'
	CLRF CompTempVar2296+D'3'
	MOVLW HIGH(CompTempVar2296+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2296+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
label24
	CLRF CompTempVar2267
	BTFSS gbl_FCV_EQ2_SE1,1
	INCF CompTempVar2267, F
	CLRF CompTempVar2266
	BTFSS gbl_FCV_EQ2_SE2,6
	INCF CompTempVar2266, F
	MOVF CompTempVar2266, W
	ANDWF CompTempVar2267, W
	BTFSC STATUS,Z
	GOTO	label25
	MOVLW 0x45
	MOVWF CompTempVar2298
	MOVLW 0x32
	MOVWF CompTempVar2298+D'1'
	MOVLW 0x42
	MOVWF CompTempVar2298+D'2'
	CLRF CompTempVar2298+D'3'
	MOVLW HIGH(CompTempVar2298+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2298+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	GOTO	label27
label25
	CLRF CompTempVar2301
	BTFSC gbl_FCV_EQ2_SE1,1
	INCF CompTempVar2301, F
	CLRF CompTempVar2300
	BTFSS gbl_FCV_EQ2_SE2,6
	INCF CompTempVar2300, F
	MOVF CompTempVar2300, W
	ANDWF CompTempVar2301, W
	BTFSC STATUS,Z
	GOTO	label26
	MOVLW 0x45
	MOVWF CompTempVar2302
	MOVLW 0x32
	MOVWF CompTempVar2302+D'1'
	MOVLW 0x50
	MOVWF CompTempVar2302+D'2'
	CLRF CompTempVar2302+D'3'
	MOVLW HIGH(CompTempVar2302+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2302+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	GOTO	label27
label26
	CLRF CompTempVar2305
	BTFSS gbl_FCV_EQ2_SE1,1
	INCF CompTempVar2305, F
	CLRF CompTempVar2304
	BTFSC gbl_FCV_EQ2_SE2,6
	INCF CompTempVar2304, F
	MOVF CompTempVar2304, W
	ANDWF CompTempVar2305, W
	BTFSC STATUS,Z
	GOTO	label27
	MOVLW 0x45
	MOVWF CompTempVar2306
	MOVLW 0x32
	MOVWF CompTempVar2306+D'1'
	MOVLW 0x52
	MOVWF CompTempVar2306+D'2'
	CLRF CompTempVar2306+D'3'
	MOVLW HIGH(CompTempVar2306+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2306+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
label27
	CLRF CompTempVar2269
	BTFSS gbl_FCV_EQ3_SE1,5
	INCF CompTempVar2269, F
	CLRF CompTempVar2268
	BTFSS gbl_FCV_EQ3_SE2,1
	INCF CompTempVar2268, F
	MOVF CompTempVar2268, W
	ANDWF CompTempVar2269, W
	BTFSC STATUS,Z
	GOTO	label28
	MOVLW 0x45
	MOVWF CompTempVar2308
	MOVLW 0x33
	MOVWF CompTempVar2308+D'1'
	MOVLW 0x42
	MOVWF CompTempVar2308+D'2'
	CLRF CompTempVar2308+D'3'
	MOVLW HIGH(CompTempVar2308+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2308+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	GOTO	label30
label28
	CLRF CompTempVar2311
	BTFSC gbl_FCV_EQ3_SE1,5
	INCF CompTempVar2311, F
	CLRF CompTempVar2310
	BTFSS gbl_FCV_EQ3_SE2,1
	INCF CompTempVar2310, F
	MOVF CompTempVar2310, W
	ANDWF CompTempVar2311, W
	BTFSC STATUS,Z
	GOTO	label29
	MOVLW 0x45
	MOVWF CompTempVar2312
	MOVLW 0x33
	MOVWF CompTempVar2312+D'1'
	MOVLW 0x50
	MOVWF CompTempVar2312+D'2'
	CLRF CompTempVar2312+D'3'
	MOVLW HIGH(CompTempVar2312+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2312+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	GOTO	label30
label29
	CLRF CompTempVar2315
	BTFSS gbl_FCV_EQ3_SE1,5
	INCF CompTempVar2315, F
	CLRF CompTempVar2314
	BTFSC gbl_FCV_EQ3_SE2,1
	INCF CompTempVar2314, F
	MOVF CompTempVar2314, W
	ANDWF CompTempVar2315, W
	BTFSC STATUS,Z
	GOTO	label30
	MOVLW 0x45
	MOVWF CompTempVar2316
	MOVLW 0x33
	MOVWF CompTempVar2316+D'1'
	MOVLW 0x52
	MOVWF CompTempVar2316+D'2'
	CLRF CompTempVar2316+D'3'
	MOVLW HIGH(CompTempVar2316+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2316+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
label30
	CLRF CompTempVar2271
	BTFSS gbl_FCV_EQ4_SE1,3
	INCF CompTempVar2271, F
	CLRF CompTempVar2270
	BTFSS gbl_FCV_EQ4_SE2,5
	INCF CompTempVar2270, F
	MOVF CompTempVar2270, W
	ANDWF CompTempVar2271, W
	BTFSC STATUS,Z
	GOTO	label31
	MOVLW 0x45
	MOVWF CompTempVar2318
	MOVLW 0x34
	MOVWF CompTempVar2318+D'1'
	MOVLW 0x42
	MOVWF CompTempVar2318+D'2'
	CLRF CompTempVar2318+D'3'
	MOVLW HIGH(CompTempVar2318+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2318+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	GOTO	label33
label31
	CLRF CompTempVar2321
	BTFSC gbl_FCV_EQ4_SE1,3
	INCF CompTempVar2321, F
	CLRF CompTempVar2320
	BTFSS gbl_FCV_EQ4_SE2,5
	INCF CompTempVar2320, F
	MOVF CompTempVar2320, W
	ANDWF CompTempVar2321, W
	BTFSC STATUS,Z
	GOTO	label32
	MOVLW 0x45
	MOVWF CompTempVar2322
	MOVLW 0x34
	MOVWF CompTempVar2322+D'1'
	MOVLW 0x50
	MOVWF CompTempVar2322+D'2'
	CLRF CompTempVar2322+D'3'
	MOVLW HIGH(CompTempVar2322+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2322+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	GOTO	label33
label32
	CLRF CompTempVar2325
	BTFSS gbl_FCV_EQ4_SE1,3
	INCF CompTempVar2325, F
	CLRF CompTempVar2324
	BTFSC gbl_FCV_EQ4_SE2,5
	INCF CompTempVar2324, F
	MOVF CompTempVar2324, W
	ANDWF CompTempVar2325, W
	BTFSC STATUS,Z
	GOTO	label33
	MOVLW 0x45
	MOVWF CompTempVar2326
	MOVLW 0x34
	MOVWF CompTempVar2326+D'1'
	MOVLW 0x52
	MOVWF CompTempVar2326+D'2'
	CLRF CompTempVar2326+D'3'
	MOVLW HIGH(CompTempVar2326+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2326+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
label33
	CLRF CompTempVar2273
	BTFSS gbl_FCV_EQ5_SE1,6
	INCF CompTempVar2273, F
	CLRF CompTempVar2272
	BTFSS gbl_FCV_EQ5_SE2,2
	INCF CompTempVar2272, F
	MOVF CompTempVar2272, W
	ANDWF CompTempVar2273, W
	BTFSC STATUS,Z
	GOTO	label34
	MOVLW 0x45
	MOVWF CompTempVar2328
	MOVLW 0x35
	MOVWF CompTempVar2328+D'1'
	MOVLW 0x42
	MOVWF CompTempVar2328+D'2'
	CLRF CompTempVar2328+D'3'
	MOVLW HIGH(CompTempVar2328+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2328+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	GOTO	label36
label34
	CLRF CompTempVar2331
	BTFSC gbl_FCV_EQ5_SE1,6
	INCF CompTempVar2331, F
	CLRF CompTempVar2330
	BTFSS gbl_FCV_EQ5_SE2,2
	INCF CompTempVar2330, F
	MOVF CompTempVar2330, W
	ANDWF CompTempVar2331, W
	BTFSC STATUS,Z
	GOTO	label35
	MOVLW 0x45
	MOVWF CompTempVar2332
	MOVLW 0x35
	MOVWF CompTempVar2332+D'1'
	MOVLW 0x50
	MOVWF CompTempVar2332+D'2'
	CLRF CompTempVar2332+D'3'
	MOVLW HIGH(CompTempVar2332+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2332+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	GOTO	label36
label35
	CLRF CompTempVar2335
	BTFSS gbl_FCV_EQ5_SE1,6
	INCF CompTempVar2335, F
	CLRF CompTempVar2334
	BTFSC gbl_FCV_EQ5_SE2,2
	INCF CompTempVar2334, F
	MOVF CompTempVar2334, W
	ANDWF CompTempVar2335, W
	BTFSC STATUS,Z
	GOTO	label36
	MOVLW 0x45
	MOVWF CompTempVar2336
	MOVLW 0x35
	MOVWF CompTempVar2336+D'1'
	MOVLW 0x52
	MOVWF CompTempVar2336+D'2'
	CLRF CompTempVar2336+D'3'
	MOVLW HIGH(CompTempVar2336+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2336+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
label36
	CLRF CompTempVar2275
	BTFSS gbl_FCV_EQ6_SE1,3
	INCF CompTempVar2275, F
	CLRF CompTempVar2274
	BTFSS gbl_FCV_EQ6_SE2,5
	INCF CompTempVar2274, F
	MOVF CompTempVar2274, W
	ANDWF CompTempVar2275, W
	BTFSC STATUS,Z
	GOTO	label37
	MOVLW 0x45
	MOVWF CompTempVar2338
	MOVLW 0x36
	MOVWF CompTempVar2338+D'1'
	MOVLW 0x42
	MOVWF CompTempVar2338+D'2'
	CLRF CompTempVar2338+D'3'
	MOVLW HIGH(CompTempVar2338+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2338+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	RETURN
label37
	CLRF CompTempVar2341
	BTFSC gbl_FCV_EQ6_SE1,3
	INCF CompTempVar2341, F
	CLRF CompTempVar2340
	BTFSS gbl_FCV_EQ6_SE2,5
	INCF CompTempVar2340, F
	MOVF CompTempVar2340, W
	ANDWF CompTempVar2341, W
	BTFSC STATUS,Z
	GOTO	label38
	MOVLW 0x45
	MOVWF CompTempVar2342
	MOVLW 0x36
	MOVWF CompTempVar2342+D'1'
	MOVLW 0x50
	MOVWF CompTempVar2342+D'2'
	CLRF CompTempVar2342+D'3'
	MOVLW HIGH(CompTempVar2342+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2342+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	RETURN
label38
	CLRF CompTempVar2345
	BTFSS gbl_FCV_EQ6_SE1,3
	INCF CompTempVar2345, F
	CLRF CompTempVar2344
	BTFSC gbl_FCV_EQ6_SE2,5
	INCF CompTempVar2344, F
	MOVF CompTempVar2344, W
	ANDWF CompTempVar2345, W
	BTFSC STATUS,Z
	RETURN
	MOVLW 0x45
	MOVWF CompTempVar2346
	MOVLW 0x36
	MOVWF CompTempVar2346+D'1'
	MOVLW 0x52
	MOVWF CompTempVar2346+D'2'
	CLRF CompTempVar2346+D'3'
	MOVLW HIGH(CompTempVar2346+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2346+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	RETURN
; } FCM_check function end

	ORG 0x0000040B
FCM_Equipm_00056
; { FCM_Equipment4 ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	CLRF CompTempVar2351
	BTFSS gbl_FCV_EQ4_SE1,3
	INCF CompTempVar2351, F
	CLRF CompTempVar2348
	BTFSS gbl_FCV_EQ4_SE2,5
	INCF CompTempVar2348, F
	MOVF CompTempVar2348, W
	ANDWF CompTempVar2351, F
	CLRF CompTempVar2350
	BTFSS gbl_FCV_EQ4_FLAG,2
	INCF CompTempVar2350, F
	MOVF CompTempVar2350, W
	ANDWF CompTempVar2351, W
	BTFSC STATUS,Z
	GOTO	label39
	MOVLW 0x45
	MOVWF CompTempVar2352
	MOVLW 0x34
	MOVWF CompTempVar2352+D'1'
	MOVLW 0x42
	MOVWF CompTempVar2352+D'2'
	CLRF CompTempVar2352+D'3'
	MOVLW HIGH(CompTempVar2352+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2352+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	MOVLW 0xC8
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BSF gbl_FCV_EQ4_FLAG,2
	RETURN
label39
	CLRF CompTempVar2357
	BTFSC gbl_FCV_EQ4_SE1,3
	INCF CompTempVar2357, F
	CLRF CompTempVar2354
	BTFSS gbl_FCV_EQ4_SE2,5
	INCF CompTempVar2354, F
	MOVF CompTempVar2354, W
	ANDWF CompTempVar2357, F
	CLRF CompTempVar2356
	BTFSC gbl_FCV_EQ4_FLAG,2
	INCF CompTempVar2356, F
	MOVF CompTempVar2356, W
	ANDWF CompTempVar2357, W
	BTFSC STATUS,Z
	GOTO	label40
	MOVLW 0x45
	MOVWF CompTempVar2358
	MOVLW 0x34
	MOVWF CompTempVar2358+D'1'
	MOVLW 0x50
	MOVWF CompTempVar2358+D'2'
	CLRF CompTempVar2358+D'3'
	MOVLW HIGH(CompTempVar2358+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2358+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	MOVLW 0xFF
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xF5
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BCF gbl_FCV_EQ4_FLAG,2
	RETURN
label40
	CLRF CompTempVar2361
	BTFSS gbl_FCV_EQ4_SE1,3
	INCF CompTempVar2361, F
	CLRF CompTempVar2360
	BTFSC gbl_FCV_EQ4_SE2,5
	INCF CompTempVar2360, F
	MOVF CompTempVar2360, W
	ANDWF CompTempVar2361, W
	BTFSC STATUS,Z
	RETURN
	BCF gbl_FCV_EQ4_ERRORFLAG,7
label41
	BTFSS gbl_FCV_EQ4_SE2,5
	GOTO	label43
	MOVLW 0x02
	BSF STATUS, RP0
	IORWF gbl_trise, W
	MOVWF gbl_trise
	MOVLW 0x02
	BCF STATUS, RP0
	ANDWF gbl_porte, W
	MOVWF CompTempVar2362
	CLRF CompTempVar2363
	MOVLW 0x02
	SUBWF CompTempVar2362, W
	BTFSC STATUS,Z
	INCF CompTempVar2363, F
	BCF gbl_FCV_EQ4_SE2,5
	MOVF CompTempVar2363, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ4_SE2,5
	BTFSC gbl_FCV_EQ4_ERRORFLAG,7
	GOTO	label42
	MOVLW 0x45
	MOVWF CompTempVar2364
	MOVLW 0x34
	MOVWF CompTempVar2364+D'1'
	MOVLW 0x52
	MOVWF CompTempVar2364+D'2'
	CLRF CompTempVar2364+D'3'
	MOVLW HIGH(CompTempVar2364+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2364+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	MOVLW 0xFF
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xF5
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BSF gbl_FCV_EQ4_ERRORFLAG,7
label42
	MOVLW 0x4C
	MOVWF FCD_PWM0_S_00053_arg_nDuty
	CALL FCD_PWM0_S_00053
	MOVLW 0x64
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CLRF FCD_PWM0_S_00053_arg_nDuty
	CALL FCD_PWM0_S_00053
	MOVLW 0x64
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	GOTO	label41
label43
	BCF gbl_FCV_EQ4_FLAG,2
	RETURN
; } FCM_Equipment4 function end

	ORG 0x00000497
FCM_Equipm_00055
; { FCM_Equipment3 ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	CLRF CompTempVar2231
	BTFSS gbl_FCV_EQ3_SE1,5
	INCF CompTempVar2231, F
	CLRF CompTempVar2228
	BTFSS gbl_FCV_EQ3_SE2,1
	INCF CompTempVar2228, F
	MOVF CompTempVar2228, W
	ANDWF CompTempVar2231, F
	CLRF CompTempVar2230
	BTFSS gbl_FCV_EQ3_FLAG,4
	INCF CompTempVar2230, F
	MOVF CompTempVar2230, W
	ANDWF CompTempVar2231, W
	BTFSC STATUS,Z
	GOTO	label44
	MOVLW 0x45
	MOVWF CompTempVar2232
	MOVLW 0x33
	MOVWF CompTempVar2232+D'1'
	MOVLW 0x42
	MOVWF CompTempVar2232+D'2'
	CLRF CompTempVar2232+D'3'
	MOVLW HIGH(CompTempVar2232+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2232+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	MOVLW 0xC8
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BSF gbl_FCV_EQ3_FLAG,4
	RETURN
label44
	CLRF CompTempVar2237
	BTFSC gbl_FCV_EQ3_SE1,5
	INCF CompTempVar2237, F
	CLRF CompTempVar2234
	BTFSS gbl_FCV_EQ3_SE2,1
	INCF CompTempVar2234, F
	MOVF CompTempVar2234, W
	ANDWF CompTempVar2237, F
	CLRF CompTempVar2236
	BTFSC gbl_FCV_EQ3_FLAG,4
	INCF CompTempVar2236, F
	MOVF CompTempVar2236, W
	ANDWF CompTempVar2237, W
	BTFSC STATUS,Z
	GOTO	label45
	MOVLW 0x45
	MOVWF CompTempVar2238
	MOVLW 0x33
	MOVWF CompTempVar2238+D'1'
	MOVLW 0x50
	MOVWF CompTempVar2238+D'2'
	CLRF CompTempVar2238+D'3'
	MOVLW HIGH(CompTempVar2238+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2238+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	MOVLW 0xFF
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xF5
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BCF gbl_FCV_EQ3_FLAG,4
	RETURN
label45
	CLRF CompTempVar2241
	BTFSS gbl_FCV_EQ3_SE1,5
	INCF CompTempVar2241, F
	CLRF CompTempVar2240
	BTFSC gbl_FCV_EQ3_SE2,1
	INCF CompTempVar2240, F
	MOVF CompTempVar2240, W
	ANDWF CompTempVar2241, W
	BTFSC STATUS,Z
	RETURN
	BCF gbl_FCV_EQ3_ERRORFLAG,1
label46
	BTFSS gbl_FCV_EQ3_SE2,1
	GOTO	label48
	MOVLW 0x20
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x20
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2242
	CLRF CompTempVar2243
	MOVLW 0x20
	SUBWF CompTempVar2242, W
	BTFSC STATUS,Z
	INCF CompTempVar2243, F
	BCF gbl_FCV_EQ3_SE2,1
	MOVF CompTempVar2243, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ3_SE2,1
	BTFSC gbl_FCV_EQ3_ERRORFLAG,1
	GOTO	label47
	MOVLW 0x45
	MOVWF CompTempVar2244
	MOVLW 0x33
	MOVWF CompTempVar2244+D'1'
	MOVLW 0x52
	MOVWF CompTempVar2244+D'2'
	CLRF CompTempVar2244+D'3'
	MOVLW HIGH(CompTempVar2244+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2244+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	MOVLW 0xFF
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xF5
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BSF gbl_FCV_EQ3_ERRORFLAG,1
label47
	MOVLW 0x4C
	MOVWF FCD_PWM0_S_00053_arg_nDuty
	CALL FCD_PWM0_S_00053
	MOVLW 0x64
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CLRF FCD_PWM0_S_00053_arg_nDuty
	CALL FCD_PWM0_S_00053
	MOVLW 0x64
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	GOTO	label46
label48
	BCF gbl_FCV_EQ3_FLAG,4
	RETURN
; } FCM_Equipment3 function end

	ORG 0x00000523
FCM_Equipm_00054
; { FCM_Equipment2 ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	CLRF CompTempVar2213
	BTFSS gbl_FCV_EQ2_SE1,1
	INCF CompTempVar2213, F
	CLRF CompTempVar2210
	BTFSS gbl_FCV_EQ2_SE2,6
	INCF CompTempVar2210, F
	MOVF CompTempVar2210, W
	ANDWF CompTempVar2213, F
	CLRF CompTempVar2212
	BTFSS gbl_FCV_EQ2_FLAG,7
	INCF CompTempVar2212, F
	MOVF CompTempVar2212, W
	ANDWF CompTempVar2213, W
	BTFSC STATUS,Z
	GOTO	label49
	MOVLW 0x45
	MOVWF CompTempVar2214
	MOVLW 0x32
	MOVWF CompTempVar2214+D'1'
	MOVLW 0x42
	MOVWF CompTempVar2214+D'2'
	CLRF CompTempVar2214+D'3'
	MOVLW HIGH(CompTempVar2214+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2214+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	MOVLW 0xC8
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BSF gbl_FCV_EQ2_FLAG,7
	RETURN
label49
	CLRF CompTempVar2219
	BTFSC gbl_FCV_EQ2_SE1,1
	INCF CompTempVar2219, F
	CLRF CompTempVar2216
	BTFSS gbl_FCV_EQ2_SE2,6
	INCF CompTempVar2216, F
	MOVF CompTempVar2216, W
	ANDWF CompTempVar2219, F
	CLRF CompTempVar2218
	BTFSC gbl_FCV_EQ2_FLAG,7
	INCF CompTempVar2218, F
	MOVF CompTempVar2218, W
	ANDWF CompTempVar2219, W
	BTFSC STATUS,Z
	GOTO	label50
	MOVLW 0x45
	MOVWF CompTempVar2220
	MOVLW 0x32
	MOVWF CompTempVar2220+D'1'
	MOVLW 0x50
	MOVWF CompTempVar2220+D'2'
	CLRF CompTempVar2220+D'3'
	MOVLW HIGH(CompTempVar2220+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2220+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	MOVLW 0xFF
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xF5
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BCF gbl_FCV_EQ2_FLAG,7
	RETURN
label50
	CLRF CompTempVar2223
	BTFSS gbl_FCV_EQ2_SE1,1
	INCF CompTempVar2223, F
	CLRF CompTempVar2222
	BTFSC gbl_FCV_EQ2_SE2,6
	INCF CompTempVar2222, F
	MOVF CompTempVar2222, W
	ANDWF CompTempVar2223, W
	BTFSC STATUS,Z
	RETURN
	BCF gbl_FCV_EQ2_ERRORFLAG,4
label51
	BTFSS gbl_FCV_EQ2_SE2,6
	GOTO	label53
	MOVLW 0x08
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x08
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2224
	CLRF CompTempVar2225
	MOVLW 0x08
	SUBWF CompTempVar2224, W
	BTFSC STATUS,Z
	INCF CompTempVar2225, F
	BCF gbl_FCV_EQ2_SE2,6
	MOVF CompTempVar2225, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ2_SE2,6
	BTFSC gbl_FCV_EQ2_ERRORFLAG,4
	GOTO	label52
	MOVLW 0x45
	MOVWF CompTempVar2226
	MOVLW 0x32
	MOVWF CompTempVar2226+D'1'
	MOVLW 0x52
	MOVWF CompTempVar2226+D'2'
	CLRF CompTempVar2226+D'3'
	MOVLW HIGH(CompTempVar2226+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2226+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	MOVLW 0xFF
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xF5
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BSF gbl_FCV_EQ2_ERRORFLAG,4
label52
	MOVLW 0x4C
	MOVWF FCD_PWM0_S_00053_arg_nDuty
	CALL FCD_PWM0_S_00053
	MOVLW 0x64
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CLRF FCD_PWM0_S_00053_arg_nDuty
	CALL FCD_PWM0_S_00053
	MOVLW 0x64
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	GOTO	label51
label53
	BCF gbl_FCV_EQ2_FLAG,7
	RETURN
; } FCM_Equipment2 function end

	ORG 0x000005AF
FCM_Equipm_00051
; { FCM_Equipment1 ; function begin
	BCF STATUS, RP0
	BCF STATUS, RP1
	CLRF CompTempVar2191
	BTFSS gbl_FCV_EQ1_SE1,0
	INCF CompTempVar2191, F
	CLRF CompTempVar2188
	BTFSS gbl_FCV_EQ1_SE2,2
	INCF CompTempVar2188, F
	MOVF CompTempVar2188, W
	ANDWF CompTempVar2191, F
	CLRF CompTempVar2190
	BTFSS gbl_FCV_EQ1_FLAG,4
	INCF CompTempVar2190, F
	MOVF CompTempVar2190, W
	ANDWF CompTempVar2191, W
	BTFSC STATUS,Z
	GOTO	label54
	MOVLW 0x45
	MOVWF CompTempVar2192
	MOVLW 0x31
	MOVWF CompTempVar2192+D'1'
	MOVLW 0x42
	MOVWF CompTempVar2192+D'2'
	CLRF CompTempVar2192+D'3'
	MOVLW HIGH(CompTempVar2192+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2192+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	MOVLW 0xC8
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BSF gbl_FCV_EQ1_FLAG,4
	RETURN
label54
	CLRF CompTempVar2197
	BTFSC gbl_FCV_EQ1_SE1,0
	INCF CompTempVar2197, F
	CLRF CompTempVar2194
	BTFSS gbl_FCV_EQ1_SE2,2
	INCF CompTempVar2194, F
	MOVF CompTempVar2194, W
	ANDWF CompTempVar2197, F
	CLRF CompTempVar2196
	BTFSC gbl_FCV_EQ1_FLAG,4
	INCF CompTempVar2196, F
	MOVF CompTempVar2196, W
	ANDWF CompTempVar2197, W
	BTFSC STATUS,Z
	GOTO	label55
	MOVLW 0x45
	MOVWF CompTempVar2198
	MOVLW 0x31
	MOVWF CompTempVar2198+D'1'
	MOVLW 0x50
	MOVWF CompTempVar2198+D'2'
	CLRF CompTempVar2198+D'3'
	MOVLW HIGH(CompTempVar2198+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2198+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	MOVLW 0xFF
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xF5
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BCF gbl_FCV_EQ1_FLAG,4
	RETURN
label55
	CLRF CompTempVar2201
	BTFSS gbl_FCV_EQ1_SE1,0
	INCF CompTempVar2201, F
	CLRF CompTempVar2200
	BTFSC gbl_FCV_EQ1_SE2,2
	INCF CompTempVar2200, F
	MOVF CompTempVar2200, W
	ANDWF CompTempVar2201, W
	BTFSC STATUS,Z
	RETURN
	BCF gbl_FCV_EQ1_ERRORFLAG,6
label56
	BTFSS gbl_FCV_EQ1_SE2,2
	GOTO	label58
	MOVLW 0x02
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x02
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2202
	CLRF CompTempVar2203
	MOVLW 0x02
	SUBWF CompTempVar2202, W
	BTFSC STATUS,Z
	INCF CompTempVar2203, F
	BCF gbl_FCV_EQ1_SE2,2
	MOVF CompTempVar2203, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ1_SE2,2
	BTFSC gbl_FCV_EQ1_ERRORFLAG,6
	GOTO	label57
	MOVLW 0x45
	MOVWF CompTempVar2204
	MOVLW 0x31
	MOVWF CompTempVar2204+D'1'
	MOVLW 0x52
	MOVWF CompTempVar2204+D'2'
	CLRF CompTempVar2204+D'3'
	MOVLW HIGH(CompTempVar2204+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2204+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x03
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	CALL FCD_RS2320_00052
	MOVLW 0xFF
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	MOVLW 0xF5
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	BSF gbl_FCV_EQ1_ERRORFLAG,6
label57
	MOVLW 0x4C
	MOVWF FCD_PWM0_S_00053_arg_nDuty
	CALL FCD_PWM0_S_00053
	MOVLW 0x64
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	CLRF FCD_PWM0_S_00053_arg_nDuty
	CALL FCD_PWM0_S_00053
	MOVLW 0x64
	MOVWF delay_ms_00000_arg_del
	CALL delay_ms_00000
	GOTO	label56
label58
	BCF gbl_FCV_EQ1_FLAG,4
	RETURN
; } FCM_Equipment1 function end

	ORG 0x0000063B
FCD_RS2320_0006B
; { FCD_RS2320_ReceiveRS232Char ; function begin
	MOVF FCD_RS2320_0006B_arg_nTimeout, W
	MOVWF FC_CAL_UAR_00067_arg_nTimeout
	CALL FC_CAL_UAR_00067
	MOVF CompTempVarRet2431, W
	MOVWF CompTempVarRet2432
	MOVF CompTempVarRet2431+D'1', W
	MOVWF CompTempVarRet2432+D'1'
	RETURN
; } FCD_RS2320_ReceiveRS232Char function end

	ORG 0x00000643
FCD_PWM0_E_00074
; { FCD_PWM0_Enable ; function begin
	MOVLW 0x9B
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF FC_CAL_PWM_00072_arg_period
	MOVLW 0x10
	MOVWF FC_CAL_PWM_00072_arg_prescaler
	CLRF FC_CAL_PWM_00072_arg_prescaler+D'1'
	CALL FC_CAL_PWM_00072
	CALL FC_CAL_PWM_0006F
	RETURN
; } FCD_PWM0_Enable function end

	ORG 0x0000064D
FCD_LCDDis_00060
; { FCD_LCDDisplay0_PrintString ; function begin
	CLRF FCD_LCDDis_00060_1_idx
	CLRF FCD_LCDDis_00060_1_idx
label59
	MOVF FCD_LCDDis_00060_arg_MSZ_String, W
	SUBWF FCD_LCDDis_00060_1_idx, W
	BTFSC STATUS,C
	RETURN
	BCF STATUS,IRP
	BTFSC FCD_LCDDis_00060_arg_String+D'1',0
	BSF STATUS,IRP
	MOVF FCD_LCDDis_00060_arg_String, W
	ADDWF FCD_LCDDis_00060_1_idx, W
	MOVWF FSR
	MOVF INDF, F
	BTFSC STATUS,Z
	RETURN
	BCF STATUS,IRP
	BTFSC FCD_LCDDis_00060_arg_String+D'1',0
	BSF STATUS,IRP
	MOVF FCD_LCDDis_00060_arg_String, W
	ADDWF FCD_LCDDis_00060_1_idx, W
	MOVWF FSR
	MOVF INDF, W
	MOVWF FCD_LCDDis_00059_arg_in
	MOVLW 0x10
	MOVWF FCD_LCDDis_00059_arg_mask
	CALL FCD_LCDDis_00059
	INCF FCD_LCDDis_00060_1_idx, F
	GOTO	label59
; } FCD_LCDDisplay0_PrintString function end

	ORG 0x00000669
FCD_LCDDis_0005F
; { FCD_LCDDisplay0_PrintNumber ; function begin
	BTFSS FCD_LCDDis_0005F_arg_Number+D'1',7
	GOTO	label60
	MOVLW 0x2D
	MOVWF FCD_LCDDis_00059_arg_in
	MOVLW 0x10
	MOVWF FCD_LCDDis_00059_arg_mask
	CALL FCD_LCDDis_00059
	MOVF FCD_LCDDis_0005F_arg_Number, W
	SUBLW 0x00
	MOVWF CompTempVar2403
	COMF FCD_LCDDis_0005F_arg_Number+D'1', F
	BTFSC STATUS,C
	INCF FCD_LCDDis_0005F_arg_Number+D'1', F
	MOVF CompTempVar2403, W
	MOVWF FCD_LCDDis_0005F_arg_Number
label60
	MOVF FCD_LCDDis_0005F_arg_Number, W
	MOVWF FCD_LCDDis_0005F_1_tmp_int
	MOVF FCD_LCDDis_0005F_arg_Number+D'1', W
	MOVWF FCD_LCDDis_0005F_1_tmp_int+D'1'
	MOVLW 0x27
	SUBWF FCD_LCDDis_0005F_arg_Number+D'1', W
	BTFSS STATUS,Z
	GOTO	label61
	MOVLW 0x10
	SUBWF FCD_LCDDis_0005F_arg_Number, W
label61
	BTFSS STATUS,C
	GOTO	label65
	BTFSC FCD_LCDDis_0005F_arg_Number+D'1',7
	GOTO	label65
	CLRF CompTempVar2406
	MOVF FCD_LCDDis_0005F_1_tmp_int, W
	MOVWF __div_16_1_00003_arg_a
	MOVF FCD_LCDDis_0005F_1_tmp_int+D'1', W
	MOVWF __div_16_1_00003_arg_a+D'1'
	BTFSS FCD_LCDDis_0005F_1_tmp_int+D'1',7
	GOTO	label62
	COMF __div_16_1_00003_arg_a, F
	COMF __div_16_1_00003_arg_a+D'1', F
	INCF __div_16_1_00003_arg_a, F
	BTFSC STATUS,Z
	INCF __div_16_1_00003_arg_a+D'1', F
	INCF CompTempVar2406, F
label62
	MOVLW 0x10
	MOVWF __div_16_1_00003_arg_b
	MOVLW 0x27
	MOVWF __div_16_1_00003_arg_b+D'1'
	CALL __div_16_1_00003
	MOVF CompTempVarRet214, W
	MOVWF FCD_LCDDis_0005F_1_tmp_byte
	BTFSS CompTempVar2406,0
	GOTO	label63
	COMF FCD_LCDDis_0005F_1_tmp_byte, F
	INCF FCD_LCDDis_0005F_1_tmp_byte, F
label63
	MOVF FCD_LCDDis_0005F_1_tmp_byte, W
	ADDLW 0x30
	MOVWF FCD_LCDDis_00059_arg_in
	MOVLW 0x10
	MOVWF FCD_LCDDis_00059_arg_mask
	CALL FCD_LCDDis_00059
label64
	MOVF FCD_LCDDis_0005F_1_tmp_byte, W
	SUBLW 0x00
	BTFSC STATUS,C
	GOTO	label65
	MOVLW 0x10
	SUBWF FCD_LCDDis_0005F_1_tmp_int, F
	MOVLW 0x27
	BTFSS STATUS,C
	MOVLW 0x28
	SUBWF FCD_LCDDis_0005F_1_tmp_int+D'1', F
	DECF FCD_LCDDis_0005F_1_tmp_byte, F
	GOTO	label64
label65
	MOVLW 0x03
	SUBWF FCD_LCDDis_0005F_arg_Number+D'1', W
	BTFSS STATUS,Z
	GOTO	label66
	MOVLW 0xE8
	SUBWF FCD_LCDDis_0005F_arg_Number, W
label66
	BTFSS STATUS,C
	GOTO	label70
	BTFSC FCD_LCDDis_0005F_arg_Number+D'1',7
	GOTO	label70
	CLRF CompTempVar2410
	MOVF FCD_LCDDis_0005F_1_tmp_int, W
	MOVWF __div_16_1_00003_arg_a
	MOVF FCD_LCDDis_0005F_1_tmp_int+D'1', W
	MOVWF __div_16_1_00003_arg_a+D'1'
	BTFSS FCD_LCDDis_0005F_1_tmp_int+D'1',7
	GOTO	label67
	COMF __div_16_1_00003_arg_a, F
	COMF __div_16_1_00003_arg_a+D'1', F
	INCF __div_16_1_00003_arg_a, F
	BTFSC STATUS,Z
	INCF __div_16_1_00003_arg_a+D'1', F
	INCF CompTempVar2410, F
label67
	MOVLW 0xE8
	MOVWF __div_16_1_00003_arg_b
	MOVLW 0x03
	MOVWF __div_16_1_00003_arg_b+D'1'
	CALL __div_16_1_00003
	MOVF CompTempVarRet214, W
	MOVWF CompTempVar2409
	BTFSS CompTempVar2410,0
	GOTO	label68
	COMF CompTempVar2409, F
	INCF CompTempVar2409, F
label68
	MOVF CompTempVar2409, W
	MOVWF FCD_LCDDis_0005F_1_tmp_byte
	MOVF FCD_LCDDis_0005F_1_tmp_byte, W
	ADDLW 0x30
	MOVWF FCD_LCDDis_00059_arg_in
	MOVLW 0x10
	MOVWF FCD_LCDDis_00059_arg_mask
	CALL FCD_LCDDis_00059
label69
	MOVF FCD_LCDDis_0005F_1_tmp_byte, W
	SUBLW 0x00
	BTFSC STATUS,C
	GOTO	label70
	MOVLW 0xE8
	SUBWF FCD_LCDDis_0005F_1_tmp_int, F
	MOVLW 0x03
	BTFSS STATUS,C
	MOVLW 0x04
	SUBWF FCD_LCDDis_0005F_1_tmp_int+D'1', F
	DECF FCD_LCDDis_0005F_1_tmp_byte, F
	GOTO	label69
label70
	MOVF FCD_LCDDis_0005F_arg_Number+D'1', W
	XORLW 0x80
	MOVWF CompTempVar2413
	MOVLW 0x80
	SUBWF CompTempVar2413, W
	BTFSS STATUS,Z
	GOTO	label71
	MOVLW 0x64
	SUBWF FCD_LCDDis_0005F_arg_Number, W
label71
	BTFSS STATUS,C
	GOTO	label75
	CLRF CompTempVar2415
	MOVF FCD_LCDDis_0005F_1_tmp_int, W
	MOVWF __div_16_1_00003_arg_a
	MOVF FCD_LCDDis_0005F_1_tmp_int+D'1', W
	MOVWF __div_16_1_00003_arg_a+D'1'
	BTFSS FCD_LCDDis_0005F_1_tmp_int+D'1',7
	GOTO	label72
	COMF __div_16_1_00003_arg_a, F
	COMF __div_16_1_00003_arg_a+D'1', F
	INCF __div_16_1_00003_arg_a, F
	BTFSC STATUS,Z
	INCF __div_16_1_00003_arg_a+D'1', F
	INCF CompTempVar2415, F
label72
	MOVLW 0x64
	MOVWF __div_16_1_00003_arg_b
	CLRF __div_16_1_00003_arg_b+D'1'
	CALL __div_16_1_00003
	MOVF CompTempVarRet214, W
	MOVWF CompTempVar2414
	BTFSS CompTempVar2415,0
	GOTO	label73
	COMF CompTempVar2414, F
	INCF CompTempVar2414, F
label73
	MOVF CompTempVar2414, W
	MOVWF FCD_LCDDis_0005F_1_tmp_byte
	MOVF FCD_LCDDis_0005F_1_tmp_byte, W
	ADDLW 0x30
	MOVWF FCD_LCDDis_00059_arg_in
	MOVLW 0x10
	MOVWF FCD_LCDDis_00059_arg_mask
	CALL FCD_LCDDis_00059
label74
	MOVF FCD_LCDDis_0005F_1_tmp_byte, W
	SUBLW 0x00
	BTFSC STATUS,C
	GOTO	label75
	MOVLW 0x64
	SUBWF FCD_LCDDis_0005F_1_tmp_int, F
	MOVF FCD_LCDDis_0005F_1_tmp_int+D'1', F
	BTFSS STATUS,C
	DECF FCD_LCDDis_0005F_1_tmp_int+D'1', F
	DECF FCD_LCDDis_0005F_1_tmp_byte, F
	GOTO	label74
label75
	MOVF FCD_LCDDis_0005F_arg_Number+D'1', W
	XORLW 0x80
	MOVWF CompTempVar2418
	MOVLW 0x80
	SUBWF CompTempVar2418, W
	BTFSS STATUS,Z
	GOTO	label76
	MOVLW 0x0A
	SUBWF FCD_LCDDis_0005F_arg_Number, W
label76
	BTFSS STATUS,C
	GOTO	label80
	CLRF CompTempVar2420
	MOVF FCD_LCDDis_0005F_1_tmp_int, W
	MOVWF __div_16_1_00003_arg_a
	MOVF FCD_LCDDis_0005F_1_tmp_int+D'1', W
	MOVWF __div_16_1_00003_arg_a+D'1'
	BTFSS FCD_LCDDis_0005F_1_tmp_int+D'1',7
	GOTO	label77
	COMF __div_16_1_00003_arg_a, F
	COMF __div_16_1_00003_arg_a+D'1', F
	INCF __div_16_1_00003_arg_a, F
	BTFSC STATUS,Z
	INCF __div_16_1_00003_arg_a+D'1', F
	INCF CompTempVar2420, F
label77
	MOVLW 0x0A
	MOVWF __div_16_1_00003_arg_b
	CLRF __div_16_1_00003_arg_b+D'1'
	CALL __div_16_1_00003
	MOVF CompTempVarRet214, W
	MOVWF CompTempVar2419
	BTFSS CompTempVar2420,0
	GOTO	label78
	COMF CompTempVar2419, F
	INCF CompTempVar2419, F
label78
	MOVF CompTempVar2419, W
	MOVWF FCD_LCDDis_0005F_1_tmp_byte
	MOVF FCD_LCDDis_0005F_1_tmp_byte, W
	ADDLW 0x30
	MOVWF FCD_LCDDis_00059_arg_in
	MOVLW 0x10
	MOVWF FCD_LCDDis_00059_arg_mask
	CALL FCD_LCDDis_00059
label79
	MOVF FCD_LCDDis_0005F_1_tmp_byte, W
	SUBLW 0x00
	BTFSC STATUS,C
	GOTO	label80
	MOVLW 0x0A
	SUBWF FCD_LCDDis_0005F_1_tmp_int, F
	MOVF FCD_LCDDis_0005F_1_tmp_int+D'1', F
	BTFSS STATUS,C
	DECF FCD_LCDDis_0005F_1_tmp_int+D'1', F
	DECF FCD_LCDDis_0005F_1_tmp_byte, F
	GOTO	label79
label80
	MOVF FCD_LCDDis_0005F_1_tmp_int, W
	ADDLW 0x30
	MOVWF FCD_LCDDis_00059_arg_in
	MOVLW 0x10
	MOVWF FCD_LCDDis_00059_arg_mask
	CALL FCD_LCDDis_00059
	RETURN
; } FCD_LCDDisplay0_PrintNumber function end

	ORG 0x00000757
FCD_LCDDis_0005E
; { FCD_LCDDisplay0_Cursor ; function begin
	MOVF FCD_LCDDis_0005E_arg_y, F
	BTFSS STATUS,Z
	GOTO	label81
	MOVLW 0x80
	MOVWF FCD_LCDDis_0005E_arg_y
	GOTO	label82
label81
	MOVLW 0xC0
	MOVWF FCD_LCDDis_0005E_arg_y
label82
	MOVF FCD_LCDDis_0005E_arg_x, W
	ADDWF FCD_LCDDis_0005E_arg_y, W
	MOVWF FCD_LCDDis_00059_arg_in
	CLRF FCD_LCDDis_00059_arg_mask
	CALL FCD_LCDDis_00059
	MOVLW 0x02
	MOVWF Wdt_Delay__0003E_arg_delay
	CALL Wdt_Delay__0003E
	RETURN
; } FCD_LCDDisplay0_Cursor function end

	ORG 0x00000768
FCD_LCDDis_0005B
; { FCD_LCDDisplay0_Clear ; function begin
	MOVLW 0x01
	BCF STATUS, RP0
	BCF STATUS, RP1
	MOVWF FCD_LCDDis_00059_arg_in
	CLRF FCD_LCDDis_00059_arg_mask
	CALL FCD_LCDDis_00059
	MOVLW 0x02
	MOVWF Wdt_Delay__0003E_arg_delay
	CALL Wdt_Delay__0003E
	MOVLW 0x02
	MOVWF FCD_LCDDis_00059_arg_in
	CLRF FCD_LCDDis_00059_arg_mask
	CALL FCD_LCDDis_00059
	MOVLW 0x02
	MOVWF Wdt_Delay__0003E_arg_delay
	CALL Wdt_Delay__0003E
	RETURN
; } FCD_LCDDisplay0_Clear function end

	ORG 0x00000779
FCD_LCDDis_0005A
; { FCD_LCDDisplay0_Start ; function begin
	BSF STATUS, RP0
	BCF STATUS, RP1
	BCF gbl_trisb,5
	BCF STATUS, RP0
	BCF gbl_portb,5
	BSF STATUS, RP0
	BCF gbl_trisb,4
	BCF STATUS, RP0
	BCF gbl_portb,4
	BSF STATUS, RP0
	BCF gbl_trisb,3
	BCF STATUS, RP0
	BCF gbl_portb,3
	BSF STATUS, RP0
	BCF gbl_trisb,2
	BCF STATUS, RP0
	BCF gbl_portb,2
	BSF STATUS, RP0
	BCF gbl_trisb,7
	BCF STATUS, RP0
	BCF gbl_portb,7
	BSF STATUS, RP0
	BCF gbl_trisb,6
	BCF STATUS, RP0
	BCF gbl_portb,6
	MOVLW 0x0C
	MOVWF Wdt_Delay__0003E_arg_delay
	CALL Wdt_Delay__0003E
	MOVLW 0x33
	MOVWF FCD_LCDDis_00059_arg_in
	CLRF FCD_LCDDis_00059_arg_mask
	CALL FCD_LCDDis_00059
	MOVLW 0x02
	MOVWF Wdt_Delay__0003E_arg_delay
	CALL Wdt_Delay__0003E
	MOVLW 0x33
	MOVWF FCD_LCDDis_00059_arg_in
	CLRF FCD_LCDDis_00059_arg_mask
	CALL FCD_LCDDis_00059
	MOVLW 0x02
	MOVWF Wdt_Delay__0003E_arg_delay
	CALL Wdt_Delay__0003E
	MOVLW 0x32
	MOVWF FCD_LCDDis_00059_arg_in
	CLRF FCD_LCDDis_00059_arg_mask
	CALL FCD_LCDDis_00059
	MOVLW 0x02
	MOVWF Wdt_Delay__0003E_arg_delay
	CALL Wdt_Delay__0003E
	MOVLW 0x2C
	MOVWF FCD_LCDDis_00059_arg_in
	CLRF FCD_LCDDis_00059_arg_mask
	CALL FCD_LCDDis_00059
	MOVLW 0x02
	MOVWF Wdt_Delay__0003E_arg_delay
	CALL Wdt_Delay__0003E
	MOVLW 0x06
	MOVWF FCD_LCDDis_00059_arg_in
	CLRF FCD_LCDDis_00059_arg_mask
	CALL FCD_LCDDis_00059
	MOVLW 0x02
	MOVWF Wdt_Delay__0003E_arg_delay
	CALL Wdt_Delay__0003E
	MOVLW 0x0C
	MOVWF FCD_LCDDis_00059_arg_in
	CLRF FCD_LCDDis_00059_arg_mask
	CALL FCD_LCDDis_00059
	MOVLW 0x02
	MOVWF Wdt_Delay__0003E_arg_delay
	CALL Wdt_Delay__0003E
	MOVLW 0x01
	MOVWF FCD_LCDDis_00059_arg_in
	CLRF FCD_LCDDis_00059_arg_mask
	CALL FCD_LCDDis_00059
	MOVLW 0x02
	MOVWF Wdt_Delay__0003E_arg_delay
	CALL Wdt_Delay__0003E
	MOVLW 0x02
	MOVWF FCD_LCDDis_00059_arg_in
	CLRF FCD_LCDDis_00059_arg_mask
	CALL FCD_LCDDis_00059
	MOVLW 0x02
	MOVWF Wdt_Delay__0003E_arg_delay
	CALL Wdt_Delay__0003E
	RETURN
; } FCD_LCDDisplay0_Start function end

	ORG 0x000007CE
main
; { main ; function begin
	BSF STATUS, RP0
	BSF STATUS, RP1
	CLRF gbl_ansel
	CLRF gbl_anselh
	CALL FC_CAL_UAR_00065
	MOVLW 0xC0
	MOVWF gbl_option_reg
	BCF STATUS, RP0
	BCF gbl_FCV_SIREN_FLAG,1
	CLRF gbl_FCV_FBIT
	CALL FCD_LCDDis_0005A
	CALL FCD_LCDDis_0005B
	CLRF FCD_LCDDis_0005E_arg_x
	CLRF FCD_LCDDis_0005E_arg_y
	CALL FCD_LCDDis_0005E
	MOVLW 0x20
	MOVWF CompTempVar2446+D'5'
	MOVLW 0x27
	MOVWF CompTempVar2446+D'13'
	MOVLW 0x4B
	MOVWF CompTempVar2446
	MOVLW 0x4E
	MOVWF CompTempVar2446+D'6'
	MOVLW 0x65
	MOVWF CompTempVar2446+D'1'
	MOVWF CompTempVar2446+D'7'
	MOVLW 0x6E
	MOVWF CompTempVar2446+D'2'
	MOVWF CompTempVar2446+D'3'
	MOVWF CompTempVar2446+D'12'
	MOVLW 0x6F
	MOVWF CompTempVar2446+D'11'
	MOVLW 0x72
	MOVWF CompTempVar2446+D'10'
	MOVLW 0x73
	MOVWF CompTempVar2446+D'14'
	MOVLW 0x74
	MOVWF CompTempVar2446+D'9'
	MOVLW 0x75
	MOVWF CompTempVar2446+D'8'
	MOVLW 0x79
	MOVWF CompTempVar2446+D'4'
	CLRF CompTempVar2446+D'15'
	MOVLW HIGH(CompTempVar2446+D'0')
	MOVWF FCD_LCDDis_00060_arg_String+D'1'
	MOVLW LOW(CompTempVar2446+D'0')
	MOVWF FCD_LCDDis_00060_arg_String
	MOVLW 0x0F
	MOVWF FCD_LCDDis_00060_arg_MSZ_String
	CALL FCD_LCDDis_00060
	CLRF FCD_LCDDis_0005E_arg_x
	MOVLW 0x01
	MOVWF FCD_LCDDis_0005E_arg_y
	CALL FCD_LCDDis_0005E
	MOVLW 0x49
	MOVWF CompTempVar2448
	MOVLW 0x61
	MOVWF CompTempVar2448+D'5'
	MOVLW 0x69
	MOVWF CompTempVar2448+D'7'
	MOVLW 0x6E
	MOVWF CompTempVar2448+D'1'
	MOVWF CompTempVar2448+D'2'
	MOVWF CompTempVar2448+D'9'
	MOVLW 0x6F
	MOVWF CompTempVar2448+D'3'
	MOVWF CompTempVar2448+D'8'
	MOVLW 0x73
	MOVWF CompTempVar2448+D'10'
	MOVLW 0x74
	MOVWF CompTempVar2448+D'6'
	MOVLW 0x76
	MOVWF CompTempVar2448+D'4'
	CLRF CompTempVar2448+D'11'
	MOVLW HIGH(CompTempVar2448+D'0')
	MOVWF FCD_LCDDis_00060_arg_String+D'1'
	MOVLW LOW(CompTempVar2448+D'0')
	MOVWF FCD_LCDDis_00060_arg_String
	MOVLW 0x0B
	MOVWF FCD_LCDDis_00060_arg_MSZ_String
	CALL FCD_LCDDis_00060
	CALL FCD_PWM0_E_00074
	CALL FCM_init_00000
	BCF gbl_FCV_SIREN,3
label83
	MOVLW 0x01
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x01
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2454
	CLRF CompTempVar2455
	DECF CompTempVar2454, W
	BTFSC STATUS,Z
	INCF CompTempVar2455, F
	BCF gbl_FCV_EQ1_SE1,0
	MOVF CompTempVar2455, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ1_SE1,0
	MOVLW 0x02
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x02
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2456
	CLRF CompTempVar2457
	MOVLW 0x02
	SUBWF CompTempVar2456, W
	BTFSC STATUS,Z
	INCF CompTempVar2457, F
	BCF gbl_FCV_EQ1_SE2,2
	MOVF CompTempVar2457, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ1_SE2,2
	MOVLW 0x04
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x04
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2458
	CLRF CompTempVar2459
	MOVLW 0x04
	SUBWF CompTempVar2458, W
	BTFSC STATUS,Z
	INCF CompTempVar2459, F
	BCF gbl_FCV_EQ2_SE1,1
	MOVF CompTempVar2459, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ2_SE1,1
	MOVLW 0x08
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x08
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2460
	CLRF CompTempVar2461
	MOVLW 0x08
	SUBWF CompTempVar2460, W
	BTFSC STATUS,Z
	INCF CompTempVar2461, F
	BCF gbl_FCV_EQ2_SE2,6
	MOVF CompTempVar2461, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ2_SE2,6
	MOVLW 0x10
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x10
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2462
	CLRF CompTempVar2463
	MOVLW 0x10
	SUBWF CompTempVar2462, W
	BTFSC STATUS,Z
	INCF CompTempVar2463, F
	BCF gbl_FCV_EQ3_SE1,5
	MOVF CompTempVar2463, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ3_SE1,5
	MOVLW 0x20
	BSF STATUS, RP0
	IORWF gbl_trisa, W
	MOVWF gbl_trisa
	MOVLW 0x20
	BCF STATUS, RP0
	ANDWF gbl_porta, W
	MOVWF CompTempVar2464
	CLRF CompTempVar2465
	MOVLW 0x20
	SUBWF CompTempVar2464, W
	BTFSC STATUS,Z
	INCF CompTempVar2465, F
	BCF gbl_FCV_EQ3_SE2,1
	MOVF CompTempVar2465, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ3_SE2,1
	MOVLW 0x01
	BSF STATUS, RP0
	IORWF gbl_trise, W
	MOVWF gbl_trise
	MOVLW 0x01
	BCF STATUS, RP0
	ANDWF gbl_porte, W
	MOVWF CompTempVar2466
	CLRF CompTempVar2467
	DECF CompTempVar2466, W
	BTFSC STATUS,Z
	INCF CompTempVar2467, F
	BCF gbl_FCV_EQ4_SE1,3
	MOVF CompTempVar2467, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ4_SE1,3
	MOVLW 0x02
	BSF STATUS, RP0
	IORWF gbl_trise, W
	MOVWF gbl_trise
	MOVLW 0x02
	BCF STATUS, RP0
	ANDWF gbl_porte, W
	MOVWF CompTempVar2468
	CLRF CompTempVar2469
	MOVLW 0x02
	SUBWF CompTempVar2468, W
	BTFSC STATUS,Z
	INCF CompTempVar2469, F
	BCF gbl_FCV_EQ4_SE2,5
	MOVF CompTempVar2469, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ4_SE2,5
	MOVLW 0x04
	BSF STATUS, RP0
	IORWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0x04
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF CompTempVar2470
	CLRF CompTempVar2471
	MOVLW 0x04
	SUBWF CompTempVar2470, W
	BTFSC STATUS,Z
	INCF CompTempVar2471, F
	BCF gbl_FCV_EQ5_SE1,6
	MOVF CompTempVar2471, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ5_SE1,6
	MOVLW 0x08
	BSF STATUS, RP0
	IORWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0x08
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF CompTempVar2472
	CLRF CompTempVar2473
	MOVLW 0x08
	SUBWF CompTempVar2472, W
	BTFSC STATUS,Z
	INCF CompTempVar2473, F
	BCF gbl_FCV_EQ5_SE2,2
	MOVF CompTempVar2473, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ5_SE2,2
	MOVLW 0x01
	BSF STATUS, RP0
	IORWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0x01
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF CompTempVar2474
	CLRF CompTempVar2475
	DECF CompTempVar2474, W
	BTFSC STATUS,Z
	INCF CompTempVar2475, F
	BCF gbl_FCV_EQ6_SE1,3
	MOVF CompTempVar2475, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ6_SE1,3
	MOVLW 0x02
	BSF STATUS, RP0
	IORWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0x02
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF CompTempVar2476
	CLRF CompTempVar2477
	MOVLW 0x02
	SUBWF CompTempVar2476, W
	BTFSC STATUS,Z
	INCF CompTempVar2477, F
	BCF gbl_FCV_EQ6_SE2,5
	MOVF CompTempVar2477, W
	BTFSS STATUS,Z
	BSF gbl_FCV_EQ6_SE2,5
	MOVLW 0x80
	BSF STATUS, RP0
	IORWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0x80
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF CompTempVar2478
	CLRF CompTempVar2479
	MOVLW 0x80
	SUBWF CompTempVar2478, W
	BTFSC STATUS,Z
	INCF CompTempVar2479, F
	BCF gbl_FCV_DOORLOCK,0
	MOVF CompTempVar2479, W
	BTFSS STATUS,Z
	BSF gbl_FCV_DOORLOCK,0
	BCF PCLATH,3
	CALL FCM_Equipm_00051
	CALL FCM_Equipm_00054
	CALL FCM_Equipm_00055
	CALL FCM_Equipm_00056
	MOVLW 0x64
	MOVWF FCD_RS2320_0006B_arg_nTimeout
	CALL FCD_RS2320_0006B
	MOVF CompTempVarRet2432, W
	MOVWF gbl_FCV_RX
	MOVF gbl_FCV_RX, W
	XORLW 0x43
	BTFSC STATUS,Z
	CALL FCM_check_00000
	MOVF gbl_FCV_RX, W
	XORLW 0x44
	BTFSC STATUS,Z
	BCF gbl_FCV_SIREN_FLAG,1
	MOVF gbl_FCV_RX, W
	XORLW 0x45
	BTFSC STATUS,Z
	BSF gbl_FCV_SIREN_FLAG,1
	BSF PCLATH,3
	BTFSS gbl_FCV_DOORLOCK,0
	GOTO	label84
	MOVLW 0xBF
	BSF STATUS, RP0
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xBF
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF gbl_portd
label84
	CLRF CompTempVar2451
	BTFSS gbl_FCV_DOORLOCK,0
	INCF CompTempVar2451, F
	CLRF CompTempVar2450
	BTFSC gbl_FCV_SIREN_FLAG,1
	INCF CompTempVar2450, F
	MOVF CompTempVar2450, W
	ANDWF CompTempVar2451, W
	BTFSC STATUS,Z
	GOTO	label85
	MOVLW 0xBF
	BSF STATUS, RP0
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xBF
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF gbl_portd
label85
	CLRF CompTempVar2453
	BTFSS gbl_FCV_DOORLOCK,0
	INCF CompTempVar2453, F
	CLRF CompTempVar2452
	BTFSS gbl_FCV_SIREN_FLAG,1
	INCF CompTempVar2452, F
	MOVF CompTempVar2452, W
	ANDWF CompTempVar2453, W
	BTFSC STATUS,Z
	GOTO	label87
	MOVF gbl_FCV_FBIT, F
	BTFSS STATUS,Z
	GOTO	label86
	MOVLW 0x53
	MOVWF CompTempVar2480
	CLRF CompTempVar2480+D'1'
	MOVLW HIGH(CompTempVar2480+D'0')
	MOVWF FCD_RS2320_00052_arg_String+D'1'
	MOVLW LOW(CompTempVar2480+D'0')
	MOVWF FCD_RS2320_00052_arg_String
	MOVLW 0x01
	MOVWF FCD_RS2320_00052_arg_MSZ_String
	BCF PCLATH,3
	CALL FCD_RS2320_00052
	MOVLW 0x01
	MOVWF gbl_FCV_FBIT
label86
	MOVLW 0xBF
	BSF STATUS, RP0
	ANDWF gbl_trisd, W
	MOVWF gbl_trisd
	MOVLW 0xBF
	BCF STATUS, RP0
	ANDWF gbl_portd, W
	MOVWF CompTempVar2482
	MOVLW 0x40
	IORWF CompTempVar2482, W
	MOVWF gbl_portd
	BSF PCLATH,3
	GOTO	label88
label87
	CLRF gbl_FCV_FBIT
label88
	MOVLW 0x0E
	MOVWF FCD_LCDDis_0005E_arg_x
	MOVLW 0x01
	MOVWF FCD_LCDDis_0005E_arg_y
	BCF PCLATH,3
	CALL FCD_LCDDis_0005E
	CLRF FCD_LCDDis_0005F_arg_Number+D'1'
	CLRF FCD_LCDDis_0005F_arg_Number
	BTFSC gbl_FCV_SIREN,3
	INCF FCD_LCDDis_0005F_arg_Number, F
	CALL FCD_LCDDis_0005F
	BSF PCLATH,3
	GOTO	label83
; } main function end

	ORG 0x00000964
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
	BCF gbl_FCV_EQ1_SE1,0
	BCF gbl_FCV_EQ2_SE1,1
	BCF gbl_FCV_EQ1_SE2,2
	BCF gbl_FCV_EQ6_FLAG,3
	BCF gbl_FCV_EQ2_ERRORFLAG,4
	BCF gbl_FCV_EQ3_SE1,5
	BCF gbl_FCV_EQ2_SE2,6
	BCF gbl_FCV_EQ5_ERRORFLAG,7
	BCF gbl_FCV_EQ5_FLAG,0
	BCF gbl_FCV_EQ3_SE2,1
	BCF gbl_FCV_EQ4_FLAG,2
	BCF gbl_FCV_EQ4_SE1,3
	BCF gbl_FCV_EQ3_FLAG,4
	BCF gbl_FCV_EQ4_SE2,5
	BCF gbl_FCV_EQ5_SE1,6
	BCF gbl_FCV_EQ2_FLAG,7
	CLRF gbl_FCV_RX
	BCF gbl_FCV_DOORLOCK,0
	BCF gbl_FCV_SIREN_FLAG,1
	BCF gbl_FCV_EQ5_SE2,2
	BCF gbl_FCV_EQ6_SE1,3
	CLRF gbl_FCV_FBIT
	BCF gbl_FCV_EQ1_FLAG,4
	BCF gbl_FCV_EQ6_SE2,5
	BCF gbl_FCV_EQ1_ERRORFLAG,6
	BCF gbl_FCV_EQ4_ERRORFLAG,7
	BCF gbl_FCV_FLAG,0
	BCF gbl_FCV_EQ6_ERRORFLAG,2
	BCF gbl_FCV_SIREN,3
	BCF PCLATH,3
	BCF PCLATH,4
	GOTO	main
	ORG 0x000009A9
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
