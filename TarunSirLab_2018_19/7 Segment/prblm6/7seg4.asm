
_main:

;7seg4.c,2 :: 		void main() {
;7seg4.c,3 :: 		int i = 0,right = 0, left = 0,j;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
	CLRF       main_right_L0+0
	CLRF       main_right_L0+1
	CLRF       main_left_L0+0
	CLRF       main_left_L0+1
;7seg4.c,4 :: 		trisb = 0x00;
	CLRF       TRISB+0
;7seg4.c,5 :: 		trisc = 0x00;
	CLRF       TRISC+0
;7seg4.c,7 :: 		portb = 0x00;
	CLRF       PORTB+0
;7seg4.c,8 :: 		portc = 0x00;
	CLRF       PORTC+0
;7seg4.c,9 :: 		while(1)
L_main0:
;7seg4.c,11 :: 		left = i/10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      main_left_L0+0
	MOVF       R0+1, 0
	MOVWF      main_left_L0+1
;7seg4.c,12 :: 		right = i%10;
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
	MOVWF      main_right_L0+0
	MOVF       R0+1, 0
	MOVWF      main_right_L0+1
;7seg4.c,13 :: 		for(j=0;j<10;j++){
	CLRF       main_j_L0+0
	CLRF       main_j_L0+1
L_main2:
	MOVLW      128
	XORWF      main_j_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main9
	MOVLW      10
	SUBWF      main_j_L0+0, 0
L__main9:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;7seg4.c,14 :: 		portb = arr[left];
	MOVF       main_left_L0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;7seg4.c,15 :: 		portc.f0 = 0;
	BCF        PORTC+0, 0
;7seg4.c,16 :: 		delay_ms(10);
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
;7seg4.c,17 :: 		portc.f0 = 1;
	BSF        PORTC+0, 0
;7seg4.c,19 :: 		portb = arr[right];
	MOVF       main_right_L0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;7seg4.c,20 :: 		portc.f1 = 0;
	BCF        PORTC+0, 1
;7seg4.c,21 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
;7seg4.c,22 :: 		portc.f1 = 1;
	BSF        PORTC+0, 1
;7seg4.c,13 :: 		for(j=0;j<10;j++){
	INCF       main_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_j_L0+1, 1
;7seg4.c,23 :: 		}
	GOTO       L_main2
L_main3:
;7seg4.c,24 :: 		if(i>=99)
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main10
	MOVLW      99
	SUBWF      main_i_L0+0, 0
L__main10:
	BTFSS      STATUS+0, 0
	GOTO       L_main7
;7seg4.c,25 :: 		i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main7:
;7seg4.c,26 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;7seg4.c,27 :: 		}
	GOTO       L_main0
;7seg4.c,30 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
