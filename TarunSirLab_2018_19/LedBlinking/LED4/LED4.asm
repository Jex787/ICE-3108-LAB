
_main:

;LED4.c,1 :: 		void main()
;LED4.c,3 :: 		int i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;LED4.c,4 :: 		TRISB=0x00;
	CLRF       TRISB+0
;LED4.c,5 :: 		TRISC=0xff;
	MOVLW      255
	MOVWF      TRISC+0
;LED4.c,6 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;LED4.c,7 :: 		while(1)
L_main0:
;LED4.c,9 :: 		if(portc.f1==1)
	BTFSS      PORTC+0, 1
	GOTO       L_main2
;LED4.c,12 :: 		if(portc.f1==1)
	BTFSS      PORTC+0, 1
	GOTO       L_main3
;LED4.c,14 :: 		if(i==0)
	MOVLW      0
	XORWF      main_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVLW      0
	XORWF      main_i_L0+0, 0
L__main11:
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;LED4.c,16 :: 		i=1;
	MOVLW      1
	MOVWF      main_i_L0+0
	MOVLW      0
	MOVWF      main_i_L0+1
;LED4.c,17 :: 		}
	GOTO       L_main5
L_main4:
;LED4.c,20 :: 		i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;LED4.c,21 :: 		}
L_main5:
;LED4.c,22 :: 		}
L_main3:
;LED4.c,23 :: 		}
L_main2:
;LED4.c,24 :: 		if(i==0)
	MOVLW      0
	XORWF      main_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      0
	XORWF      main_i_L0+0, 0
L__main12:
	BTFSS      STATUS+0, 2
	GOTO       L_main6
;LED4.c,26 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;LED4.c,27 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
;LED4.c,28 :: 		}
	GOTO       L_main8
L_main6:
;LED4.c,31 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;LED4.c,32 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
;LED4.c,33 :: 		}
L_main8:
;LED4.c,34 :: 		}
	GOTO       L_main0
;LED4.c,35 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
