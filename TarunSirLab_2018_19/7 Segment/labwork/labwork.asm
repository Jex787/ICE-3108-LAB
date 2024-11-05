
_main:

;labwork.c,3 :: 		void main() {
;labwork.c,4 :: 		trisb=0x00;
	CLRF       TRISB+0
;labwork.c,5 :: 		trisc=0x00;
	CLRF       TRISC+0
;labwork.c,6 :: 		portb=0x00;
	CLRF       PORTB+0
;labwork.c,7 :: 		portc=0x00;
	CLRF       PORTC+0
;labwork.c,8 :: 		trisd=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;labwork.c,9 :: 		portd=0;
	CLRF       PORTD+0
;labwork.c,10 :: 		while(1){
L_main0:
;labwork.c,11 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;labwork.c,12 :: 		portb=segment[i/10];
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	ADDLW      _segment+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;labwork.c,13 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
;labwork.c,14 :: 		portc.f0=1;
	BSF        PORTC+0, 0
;labwork.c,16 :: 		portc.f1=0;
	BCF        PORTC+0, 1
;labwork.c,17 :: 		portb=segment[i%10];
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDLW      _segment+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;labwork.c,18 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
;labwork.c,19 :: 		portc.f1=1;
	BSF        PORTC+0, 1
;labwork.c,21 :: 		if(portd.f0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;labwork.c,22 :: 		i++;
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;labwork.c,23 :: 		while(portd.f0==1);
L_main5:
	BTFSS      PORTD+0, 0
	GOTO       L_main6
	GOTO       L_main5
L_main6:
;labwork.c,24 :: 		}
L_main4:
;labwork.c,26 :: 		if(portd.f1==1){
	BTFSS      PORTD+0, 1
	GOTO       L_main7
;labwork.c,27 :: 		i--;
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;labwork.c,28 :: 		while(portd.f1==1);
L_main8:
	BTFSS      PORTD+0, 1
	GOTO       L_main9
	GOTO       L_main8
L_main9:
;labwork.c,29 :: 		}
L_main7:
;labwork.c,30 :: 		if(i<0 || i>99)
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main15
	MOVLW      0
	SUBWF      _i+0, 0
L__main15:
	BTFSS      STATUS+0, 0
	GOTO       L__main13
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main16
	MOVF       _i+0, 0
	SUBLW      99
L__main16:
	BTFSS      STATUS+0, 0
	GOTO       L__main13
	GOTO       L_main12
L__main13:
;labwork.c,31 :: 		i=0;
	CLRF       _i+0
	CLRF       _i+1
L_main12:
;labwork.c,33 :: 		}
	GOTO       L_main0
;labwork.c,34 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
