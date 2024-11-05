
_main:

;LED.c,1 :: 		void main() {
;LED.c,2 :: 		TRISC=0x00;
	CLRF       TRISC+0
;LED.c,3 :: 		portc=0x00;
	CLRF       PORTC+0
;LED.c,4 :: 		while(1)
L_main0:
;LED.c,6 :: 		portc.f0=1;
	BSF        PORTC+0, 0
;LED.c,7 :: 		portc.f3=1;
	BSF        PORTC+0, 3
;LED.c,8 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
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
;LED.c,9 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;LED.c,10 :: 		portc.f3=0;
	BCF        PORTC+0, 3
;LED.c,11 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
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
;LED.c,12 :: 		}
	GOTO       L_main0
;LED.c,13 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
