
_main:

;stEpperMotor.c,2 :: 		void main()
;stEpperMotor.c,4 :: 		CMCON=0x07;
	MOVLW      7
	MOVWF      CMCON+0
;stEpperMotor.c,5 :: 		ADCON1=0x06;
	MOVLW      6
	MOVWF      ADCON1+0
;stEpperMotor.c,6 :: 		TRISB=0;
	CLRF       TRISB+0
;stEpperMotor.c,7 :: 		portb=0x0F;
	MOVLW      15
	MOVWF      PORTB+0
;stEpperMotor.c,24 :: 		while(1)
L_main0:
;stEpperMotor.c,26 :: 		portb=0b00000011;
	MOVLW      3
	MOVWF      PORTB+0
;stEpperMotor.c,27 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;stEpperMotor.c,28 :: 		portb=0b00000110;
	MOVLW      6
	MOVWF      PORTB+0
;stEpperMotor.c,29 :: 		Delay_ms(500);
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
;stEpperMotor.c,30 :: 		portb=0b00001100;
	MOVLW      12
	MOVWF      PORTB+0
;stEpperMotor.c,31 :: 		Delay_ms(500);
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
;stEpperMotor.c,32 :: 		portb=0b00001001;
	MOVLW      9
	MOVWF      PORTB+0
;stEpperMotor.c,33 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;stEpperMotor.c,36 :: 		}
	GOTO       L_main0
;stEpperMotor.c,40 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
