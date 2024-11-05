
_main:

;LED2.c,1 :: 		void main() {
;LED2.c,2 :: 		TRISB=0x00;
	CLRF       TRISB+0
;LED2.c,3 :: 		TRISC=0x00;
	CLRF       TRISC+0
;LED2.c,4 :: 		portb=0x00;
	CLRF       PORTB+0
;LED2.c,5 :: 		portc=0x00;
	CLRF       PORTC+0
;LED2.c,6 :: 		while(1)
L_main0:
;LED2.c,8 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;LED2.c,9 :: 		portb.f5=0;
	BCF        PORTB+0, 5
;LED2.c,10 :: 		portc.f2=0;
	BCF        PORTC+0, 2
;LED2.c,11 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;LED2.c,13 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;LED2.c,14 :: 		portb.f5=1;
	BSF        PORTB+0, 5
;LED2.c,15 :: 		portc.f2=0;
	BCF        PORTC+0, 2
;LED2.c,16 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;LED2.c,18 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;LED2.c,19 :: 		portb.f5=0;
	BCF        PORTB+0, 5
;LED2.c,20 :: 		portc.f2=1;
	BSF        PORTC+0, 2
;LED2.c,21 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
;LED2.c,22 :: 		}
	GOTO       L_main0
;LED2.c,24 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
