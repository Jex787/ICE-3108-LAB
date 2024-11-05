
_main:

;PWM.c,1 :: 		void main() {
;PWM.c,2 :: 		short duty=0;
;PWM.c,3 :: 		TRISB=0x00;
	CLRF       TRISB+0
;PWM.c,4 :: 		portb=0x00;
	CLRF       PORTB+0
;PWM.c,6 :: 		while(1)
L_main0:
;PWM.c,8 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;PWM.c,9 :: 		portb.f1=0;
	BCF        PORTB+0, 1
;PWM.c,10 :: 		delay_ms(7000);
	MOVLW      72
	MOVWF      R11+0
	MOVLW      6
	MOVWF      R12+0
	MOVLW      159
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;PWM.c,11 :: 		}
	GOTO       L_main0
;PWM.c,12 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
