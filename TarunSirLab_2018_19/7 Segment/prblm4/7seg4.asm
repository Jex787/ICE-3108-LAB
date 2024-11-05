
_main:

;7seg4.c,1 :: 		void main() {
;7seg4.c,2 :: 		int i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
	MOVLW      64
	MOVWF      main_arra_L0+0
	MOVLW      121
	MOVWF      main_arra_L0+1
	MOVLW      36
	MOVWF      main_arra_L0+2
	MOVLW      48
	MOVWF      main_arra_L0+3
	MOVLW      25
	MOVWF      main_arra_L0+4
	MOVLW      18
	MOVWF      main_arra_L0+5
	MOVLW      2
	MOVWF      main_arra_L0+6
	MOVLW      120
	MOVWF      main_arra_L0+7
	CLRF       main_arra_L0+8
	MOVLW      16
	MOVWF      main_arra_L0+9
;7seg4.c,5 :: 		TRISB=0x00;
	CLRF       TRISB+0
;7seg4.c,7 :: 		TRISC=0xff;
	MOVLW      255
	MOVWF      TRISC+0
;7seg4.c,8 :: 		TRISD=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;7seg4.c,9 :: 		portb=0xff;
	MOVLW      255
	MOVWF      PORTB+0
;7seg4.c,11 :: 		while(1)
L_main0:
;7seg4.c,13 :: 		if(portc.f5==1)
	BTFSS      PORTC+0, 5
	GOTO       L_main2
;7seg4.c,16 :: 		portb=arra[i];
	MOVF       main_i_L0+0, 0
	ADDLW      main_arra_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;7seg4.c,17 :: 		delay_ms(400);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;7seg4.c,18 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;7seg4.c,19 :: 		if(i==10)
	MOVLW      0
	XORWF      main_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main9
	MOVLW      10
	XORWF      main_i_L0+0, 0
L__main9:
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;7seg4.c,21 :: 		i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;7seg4.c,22 :: 		}
L_main4:
;7seg4.c,23 :: 		}
L_main2:
;7seg4.c,25 :: 		if(portd.f1==1)
	BTFSS      PORTD+0, 1
	GOTO       L_main5
;7seg4.c,28 :: 		if(i<=0)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main10
	MOVF       main_i_L0+0, 0
	SUBLW      0
L__main10:
	BTFSS      STATUS+0, 0
	GOTO       L_main6
;7seg4.c,30 :: 		i=10;
	MOVLW      10
	MOVWF      main_i_L0+0
	MOVLW      0
	MOVWF      main_i_L0+1
;7seg4.c,31 :: 		}
L_main6:
;7seg4.c,32 :: 		portb=arra[i-1];
	MOVLW      1
	SUBWF      main_i_L0+0, 0
	MOVWF      R0+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      main_i_L0+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDLW      main_arra_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;7seg4.c,33 :: 		delay_ms(400);
	MOVLW      5
	MOVWF      R11+0
	MOVLW      15
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
;7seg4.c,34 :: 		i--;
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
;7seg4.c,36 :: 		}
L_main5:
;7seg4.c,37 :: 		}
	GOTO       L_main0
;7seg4.c,38 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
