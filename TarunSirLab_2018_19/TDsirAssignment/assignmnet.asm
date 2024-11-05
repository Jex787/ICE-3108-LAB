
_main:

;assignmnet.c,1 :: 		void main() {
;assignmnet.c,2 :: 		char arr[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
	MOVLW      63
	MOVWF      main_arr_L0+0
	MOVLW      6
	MOVWF      main_arr_L0+1
	MOVLW      91
	MOVWF      main_arr_L0+2
	MOVLW      79
	MOVWF      main_arr_L0+3
	MOVLW      102
	MOVWF      main_arr_L0+4
	MOVLW      109
	MOVWF      main_arr_L0+5
	MOVLW      125
	MOVWF      main_arr_L0+6
	MOVLW      7
	MOVWF      main_arr_L0+7
	MOVLW      127
	MOVWF      main_arr_L0+8
	MOVLW      111
	MOVWF      main_arr_L0+9
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
	CLRF       main_j_L0+0
	CLRF       main_j_L0+1
	CLRF       main_tmp_L0+0
	CLRF       main_tmp_L0+1
;assignmnet.c,4 :: 		trisb=0x00;
	CLRF       TRISB+0
;assignmnet.c,5 :: 		trisc=0x00;
	CLRF       TRISC+0
;assignmnet.c,6 :: 		portb=0xff;
	MOVLW      255
	MOVWF      PORTB+0
;assignmnet.c,7 :: 		portc=0x00;
	CLRF       PORTC+0
;assignmnet.c,8 :: 		portb=arr[0];
	MOVF       main_arr_L0+0, 0
	MOVWF      PORTB+0
;assignmnet.c,9 :: 		while(1)
L_main0:
;assignmnet.c,11 :: 		if(i>9999)i=0;
	MOVLW      128
	XORLW      39
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVF       main_i_L0+0, 0
	SUBLW      15
L__main11:
	BTFSC      STATUS+0, 0
	GOTO       L_main2
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main2:
;assignmnet.c,12 :: 		tmp=i;
	MOVF       main_i_L0+0, 0
	MOVWF      main_tmp_L0+0
	MOVF       main_i_L0+1, 0
	MOVWF      main_tmp_L0+1
;assignmnet.c,13 :: 		d4=tmp%10;
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
	MOVWF      main_d4_L0+0
	MOVF       R0+1, 0
	MOVWF      main_d4_L0+1
;assignmnet.c,14 :: 		tmp/=10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_tmp_L0+0, 0
	MOVWF      R0+0
	MOVF       main_tmp_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      main_tmp_L0+0
	MOVF       R0+1, 0
	MOVWF      main_tmp_L0+1
;assignmnet.c,15 :: 		d3=tmp%10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_d3_L0+0
	MOVF       R0+1, 0
	MOVWF      main_d3_L0+1
;assignmnet.c,16 :: 		tmp/=10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_tmp_L0+0, 0
	MOVWF      R0+0
	MOVF       main_tmp_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      main_tmp_L0+0
	MOVF       R0+1, 0
	MOVWF      main_tmp_L0+1
;assignmnet.c,17 :: 		d2=tmp%10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_d2_L0+0
	MOVF       R0+1, 0
	MOVWF      main_d2_L0+1
;assignmnet.c,18 :: 		d1=tmp/10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_tmp_L0+0, 0
	MOVWF      R0+0
	MOVF       main_tmp_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      main_d1_L0+0
	MOVF       R0+1, 0
	MOVWF      main_d1_L0+1
;assignmnet.c,19 :: 		for(j=0;j<1;j++)
	CLRF       main_j_L0+0
	CLRF       main_j_L0+1
L_main3:
	MOVLW      128
	XORWF      main_j_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      1
	SUBWF      main_j_L0+0, 0
L__main12:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
;assignmnet.c,22 :: 		portc.f3=0;
	BCF        PORTC+0, 3
;assignmnet.c,23 :: 		portb=arr[d4];
	MOVF       main_d4_L0+0, 0
	ADDLW      main_arr_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;assignmnet.c,24 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;assignmnet.c,25 :: 		portc.f3=1;
	BSF        PORTC+0, 3
;assignmnet.c,28 :: 		portc.f2=0;
	BCF        PORTC+0, 2
;assignmnet.c,29 :: 		portb=arr[d3];
	MOVF       main_d3_L0+0, 0
	ADDLW      main_arr_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;assignmnet.c,30 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
	NOP
;assignmnet.c,31 :: 		portc.f2=1;
	BSF        PORTC+0, 2
;assignmnet.c,34 :: 		portc.f1=0;
	BCF        PORTC+0, 1
;assignmnet.c,35 :: 		portb=arr[d2];
	MOVF       main_d2_L0+0, 0
	ADDLW      main_arr_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;assignmnet.c,36 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
	NOP
;assignmnet.c,37 :: 		portc.f1=1;
	BSF        PORTC+0, 1
;assignmnet.c,40 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;assignmnet.c,41 :: 		portb=arr[d1];
	MOVF       main_d1_L0+0, 0
	ADDLW      main_arr_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;assignmnet.c,42 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	NOP
	NOP
;assignmnet.c,43 :: 		portc.f0=1;
	BSF        PORTC+0, 0
;assignmnet.c,19 :: 		for(j=0;j<1;j++)
	INCF       main_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_j_L0+1, 1
;assignmnet.c,44 :: 		}
	GOTO       L_main3
L_main4:
;assignmnet.c,45 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;assignmnet.c,46 :: 		}
	GOTO       L_main0
;assignmnet.c,47 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
