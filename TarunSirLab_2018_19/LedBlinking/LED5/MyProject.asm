
_main:

;MyProject.c,1 :: 		void main() {
;MyProject.c,2 :: 		int count=0;
	CLRF       main_count_L0+0
	CLRF       main_count_L0+1
;MyProject.c,3 :: 		TRISD=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;MyProject.c,4 :: 		TRISB=0x00;
	CLRF       TRISB+0
;MyProject.c,5 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;MyProject.c,6 :: 		while(1)
L_main0:
;MyProject.c,9 :: 		if(portd.f0==1)
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;MyProject.c,10 :: 		{    delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;MyProject.c,11 :: 		if(count==0)
	MOVLW      0
	XORWF      main_count_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVLW      0
	XORWF      main_count_L0+0, 0
L__main11:
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;MyProject.c,12 :: 		count=1;
	MOVLW      1
	MOVWF      main_count_L0+0
	MOVLW      0
	MOVWF      main_count_L0+1
	GOTO       L_main5
L_main4:
;MyProject.c,14 :: 		count=0;
	CLRF       main_count_L0+0
	CLRF       main_count_L0+1
L_main5:
;MyProject.c,15 :: 		}
L_main2:
;MyProject.c,16 :: 		if(count==0)
	MOVLW      0
	XORWF      main_count_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      0
	XORWF      main_count_L0+0, 0
L__main12:
	BTFSS      STATUS+0, 2
	GOTO       L_main6
;MyProject.c,18 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;MyProject.c,19 :: 		portb.f5=0;
	BCF        PORTB+0, 5
;MyProject.c,20 :: 		delay_ms(200);
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
;MyProject.c,21 :: 		}
	GOTO       L_main8
L_main6:
;MyProject.c,24 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;MyProject.c,25 :: 		portb.f5=1;
	BSF        PORTB+0, 5
;MyProject.c,26 :: 		delay_ms(200);
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
;MyProject.c,27 :: 		}
L_main8:
;MyProject.c,29 :: 		}
	GOTO       L_main0
;MyProject.c,30 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
