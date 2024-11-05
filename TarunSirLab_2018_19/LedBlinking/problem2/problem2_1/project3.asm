
_main:

;project3.c,1 :: 		void main() {
;project3.c,2 :: 		int state=0;
	CLRF       main_state_L0+0
	CLRF       main_state_L0+1
;project3.c,3 :: 		TRISB=0x00;
	CLRF       TRISB+0
;project3.c,4 :: 		TRISD=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;project3.c,5 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;project3.c,6 :: 		while(1)
L_main0:
;project3.c,8 :: 		if(portd.f0==1)
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;project3.c,10 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;project3.c,11 :: 		if(portd.f0==1)
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;project3.c,13 :: 		if(state==0)
	MOVLW      0
	XORWF      main_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main10
	MOVLW      0
	XORWF      main_state_L0+0, 0
L__main10:
	BTFSS      STATUS+0, 2
	GOTO       L_main5
;project3.c,15 :: 		state=1;
	MOVLW      1
	MOVWF      main_state_L0+0
	MOVLW      0
	MOVWF      main_state_L0+1
;project3.c,16 :: 		}
	GOTO       L_main6
L_main5:
;project3.c,19 :: 		state=0;
	CLRF       main_state_L0+0
	CLRF       main_state_L0+1
;project3.c,20 :: 		}
L_main6:
;project3.c,21 :: 		}
L_main4:
;project3.c,22 :: 		}
L_main2:
;project3.c,23 :: 		if(state==0)
	MOVLW      0
	XORWF      main_state_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVLW      0
	XORWF      main_state_L0+0, 0
L__main11:
	BTFSS      STATUS+0, 2
	GOTO       L_main7
;project3.c,24 :: 		portb.f0=0;
	BCF        PORTB+0, 0
	GOTO       L_main8
L_main7:
;project3.c,26 :: 		portb.f0=1;
	BSF        PORTB+0, 0
L_main8:
;project3.c,27 :: 		}
	GOTO       L_main0
;project3.c,28 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
