
_main:

;Multiplexing.c,2 :: 		void main() {
;Multiplexing.c,3 :: 		int i=6543,dig1=0,dig2=0,dig3=0,dig4=0;
	MOVLW      143
	MOVWF      main_i_L0+0
	MOVLW      25
	MOVWF      main_i_L0+1
	CLRF       main_dig2_L0+0
	CLRF       main_dig2_L0+1
	CLRF       main_dig3_L0+0
	CLRF       main_dig3_L0+1
	CLRF       main_dig4_L0+0
	CLRF       main_dig4_L0+1
;Multiplexing.c,4 :: 		TRISB=0x00;
	CLRF       TRISB+0
;Multiplexing.c,5 :: 		TRISC=0x00;
	CLRF       TRISC+0
;Multiplexing.c,6 :: 		PORTB=0x00;
	CLRF       PORTB+0
;Multiplexing.c,7 :: 		PORTC=0x00;
	CLRF       PORTC+0
;Multiplexing.c,9 :: 		while(1)
L_main0:
;Multiplexing.c,11 :: 		dig1=i/1000;
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
;Multiplexing.c,12 :: 		dig2=((i%1000)/100);
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      main_dig2_L0+0
	MOVF       R0+1, 0
	MOVWF      main_dig2_L0+1
;Multiplexing.c,13 :: 		dig3=((i%100)/10);
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      main_dig3_L0+0
	MOVF       R0+1, 0
	MOVWF      main_dig3_L0+1
;Multiplexing.c,14 :: 		dig4=i%10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_dig4_L0+0
	MOVF       R0+1, 0
	MOVWF      main_dig4_L0+1
;Multiplexing.c,16 :: 		portc.f3=0x00;
	BCF        PORTC+0, 3
;Multiplexing.c,17 :: 		portc.f0=0xff;
	BSF        PORTC+0, 0
;Multiplexing.c,18 :: 		portb=array[dig1];
	MOVF       FLOC__main+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Multiplexing.c,19 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
	NOP
;Multiplexing.c,21 :: 		portc.f0=0x00;
	BCF        PORTC+0, 0
;Multiplexing.c,22 :: 		portc.f1=0xff;
	BSF        PORTC+0, 1
;Multiplexing.c,23 :: 		portb=array[dig2];
	MOVF       main_dig2_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Multiplexing.c,24 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;Multiplexing.c,26 :: 		portc.f1=0x00;
	BCF        PORTC+0, 1
;Multiplexing.c,27 :: 		portc.f2=0xff;
	BSF        PORTC+0, 2
;Multiplexing.c,28 :: 		portb=array[dig3];
	MOVF       main_dig3_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Multiplexing.c,29 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
;Multiplexing.c,31 :: 		portc.f2=0x00;
	BCF        PORTC+0, 2
;Multiplexing.c,32 :: 		portc.f3=0xff;
	BSF        PORTC+0, 3
;Multiplexing.c,33 :: 		portb=array[dig4];
	MOVF       main_dig4_L0+0, 0
	ADDLW      _array+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Multiplexing.c,34 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
;Multiplexing.c,35 :: 		}
	GOTO       L_main0
;Multiplexing.c,36 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
