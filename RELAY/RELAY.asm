
_main:

;RELAY.c,1 :: 		void main() {
;RELAY.c,2 :: 		TRISB=0x00;
	CLRF       TRISB+0
;RELAY.c,3 :: 		PORTB=0x00;
	CLRF       PORTB+0
;RELAY.c,4 :: 		while(1){
L_main0:
;RELAY.c,5 :: 		PORTB.f0=0xff;
	BSF        PORTB+0, 0
;RELAY.c,6 :: 		delay_ms(1000);
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
;RELAY.c,7 :: 		PORTB.f0 =0x00;
	BCF        PORTB+0, 0
;RELAY.c,8 :: 		delay_ms(1000);
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
;RELAY.c,9 :: 		}
	GOTO       L_main0
;RELAY.c,10 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
