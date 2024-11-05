
_main:

;LED3.c,2 :: 		void main() {
;LED3.c,3 :: 		TRISB=0x00;
	CLRF       TRISB+0
;LED3.c,4 :: 		TRISC=0xff;
	MOVLW      255
	MOVWF      TRISC+0
;LED3.c,5 :: 		portb.f0=0x00;
	BCF        PORTB+0, 0
;LED3.c,6 :: 		while(1)
L_main0:
;LED3.c,9 :: 		if(portc.f1==1)
	BTFSS      PORTC+0, 1
	GOTO       L_main2
;LED3.c,11 :: 		count=count+1;
	INCF       _count+0, 1
	BTFSC      STATUS+0, 2
	INCF       _count+1, 1
;LED3.c,12 :: 		if(count!=0)
	MOVLW      0
	XORWF      _count+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main8
	MOVLW      0
	XORWF      _count+0, 0
L__main8:
	BTFSC      STATUS+0, 2
	GOTO       L_main3
;LED3.c,14 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;LED3.c,15 :: 		delay_ms(500);
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
;LED3.c,16 :: 		}
	GOTO       L_main5
L_main3:
;LED3.c,19 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;LED3.c,20 :: 		}
L_main5:
;LED3.c,21 :: 		}
	GOTO       L_main6
L_main2:
;LED3.c,24 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;LED3.c,25 :: 		}
L_main6:
;LED3.c,27 :: 		}
	GOTO       L_main0
;LED3.c,28 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
