
_main:

;project2.c,1 :: 		void main() {
;project2.c,2 :: 		TRISB=0x00;
	CLRF       TRISB+0
;project2.c,3 :: 		TRISD=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;project2.c,4 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;project2.c,5 :: 		while(1)
L_main0:
;project2.c,7 :: 		if(portd.f0==1)
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;project2.c,9 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;project2.c,10 :: 		}
	GOTO       L_main3
L_main2:
;project2.c,13 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;project2.c,14 :: 		}
L_main3:
;project2.c,15 :: 		}
	GOTO       L_main0
;project2.c,16 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
