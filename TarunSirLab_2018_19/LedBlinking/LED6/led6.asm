
_main:

;led6.c,1 :: 		void main() {
;led6.c,2 :: 		TRISB=0x00;
	CLRF       TRISB+0
;led6.c,3 :: 		TRISD=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;led6.c,4 :: 		portb=0;
	CLRF       PORTB+0
;led6.c,5 :: 		while(1)
L_main0:
;led6.c,7 :: 		if(portd.f0==1)
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;led6.c,9 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;led6.c,11 :: 		portb.f5=0;
	BCF        PORTB+0, 5
;led6.c,12 :: 		delay_ms(500);
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
;led6.c,14 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;led6.c,16 :: 		portb.f5=1;
	BSF        PORTB+0, 5
;led6.c,17 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;led6.c,18 :: 		}
	GOTO       L_main5
L_main2:
;led6.c,21 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;led6.c,22 :: 		portb.f5=0;
	BCF        PORTB+0, 5
;led6.c,23 :: 		}
L_main5:
;led6.c,24 :: 		}
	GOTO       L_main0
;led6.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
