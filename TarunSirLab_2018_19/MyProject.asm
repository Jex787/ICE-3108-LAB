
_main:

;MyProject.c,3 :: 		void main() {
;MyProject.c,4 :: 		trisb=0x00;
	CLRF       TRISB+0
;MyProject.c,5 :: 		trisc=0x00;
	CLRF       TRISC+0
;MyProject.c,6 :: 		portb=0x00;
	CLRF       PORTB+0
;MyProject.c,7 :: 		portc=0x00;
	CLRF       PORTC+0
;MyProject.c,8 :: 		trisd=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;MyProject.c,9 :: 		portd=0;
	CLRF       PORTD+0
;MyProject.c,10 :: 		while(1){
L_main0:
;MyProject.c,12 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;MyProject.c,13 :: 		portb=segment[i];
	MOVF       _i+0, 0
	ADDLW      _segment+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,14 :: 		delay_ms(10);
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
;MyProject.c,15 :: 		portc.f0=1;
	BSF        PORTC+0, 0
;MyProject.c,17 :: 		portc.f1=0;
	BCF        PORTC+0, 1
;MyProject.c,18 :: 		portb=segment[j];
	MOVF       _j+0, 0
	ADDLW      _segment+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,19 :: 		delay_ms(10);
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
;MyProject.c,20 :: 		portc.f1=1;
	BSF        PORTC+0, 1
;MyProject.c,22 :: 		portc.f2=0;
	BCF        PORTC+0, 2
;MyProject.c,23 :: 		portb=segment[l];
	MOVF       _l+0, 0
	ADDLW      _segment+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,24 :: 		delay_ms(10);
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
;MyProject.c,25 :: 		portc.f2=1;
	BSF        PORTC+0, 2
;MyProject.c,27 :: 		portc.f3=0;
	BCF        PORTC+0, 3
;MyProject.c,28 :: 		portb=segment[m];
	MOVF       _m+0, 0
	ADDLW      _segment+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,29 :: 		delay_ms(10);
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
;MyProject.c,30 :: 		portc.f3=1;
	BSF        PORTC+0, 3
;MyProject.c,31 :: 		if(portd.f0==1){    //for increment
	BTFSS      PORTD+0, 0
	GOTO       L_main6
;MyProject.c,32 :: 		if(k==0)i++;
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main22
	MOVLW      0
	XORWF      _k+0, 0
L__main22:
	BTFSS      STATUS+0, 2
	GOTO       L_main7
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
L_main7:
;MyProject.c,33 :: 		if(k==1)j++;
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVLW      1
	XORWF      _k+0, 0
L__main23:
	BTFSS      STATUS+0, 2
	GOTO       L_main8
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
L_main8:
;MyProject.c,34 :: 		if(k==2)l++;
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main24
	MOVLW      2
	XORWF      _k+0, 0
L__main24:
	BTFSS      STATUS+0, 2
	GOTO       L_main9
	INCF       _l+0, 1
	BTFSC      STATUS+0, 2
	INCF       _l+1, 1
L_main9:
;MyProject.c,35 :: 		if(k==3)m++;
	MOVLW      0
	XORWF      _k+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main25
	MOVLW      3
	XORWF      _k+0, 0
L__main25:
	BTFSS      STATUS+0, 2
	GOTO       L_main10
	INCF       _m+0, 1
	BTFSC      STATUS+0, 2
	INCF       _m+1, 1
L_main10:
;MyProject.c,36 :: 		while(portd.f0==1);
L_main11:
	BTFSS      PORTD+0, 0
	GOTO       L_main12
	GOTO       L_main11
L_main12:
;MyProject.c,37 :: 		}
L_main6:
;MyProject.c,38 :: 		if(portd.f1==1){
	BTFSS      PORTD+0, 1
	GOTO       L_main13
;MyProject.c,39 :: 		k++;
	INCF       _k+0, 1
	BTFSC      STATUS+0, 2
	INCF       _k+1, 1
;MyProject.c,40 :: 		while(portd.f1==1);
L_main14:
	BTFSS      PORTD+0, 1
	GOTO       L_main15
	GOTO       L_main14
L_main15:
;MyProject.c,41 :: 		}
L_main13:
;MyProject.c,42 :: 		if(k>3)k=0;
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _k+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main26
	MOVF       _k+0, 0
	SUBLW      3
L__main26:
	BTFSC      STATUS+0, 0
	GOTO       L_main16
	CLRF       _k+0
	CLRF       _k+1
L_main16:
;MyProject.c,43 :: 		if(i>9)i=0;
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main27
	MOVF       _i+0, 0
	SUBLW      9
L__main27:
	BTFSC      STATUS+0, 0
	GOTO       L_main17
	CLRF       _i+0
	CLRF       _i+1
L_main17:
;MyProject.c,44 :: 		if(j>9)j=0;
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _j+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main28
	MOVF       _j+0, 0
	SUBLW      9
L__main28:
	BTFSC      STATUS+0, 0
	GOTO       L_main18
	CLRF       _j+0
	CLRF       _j+1
L_main18:
;MyProject.c,45 :: 		if(l>9)l=0;
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _l+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main29
	MOVF       _l+0, 0
	SUBLW      9
L__main29:
	BTFSC      STATUS+0, 0
	GOTO       L_main19
	CLRF       _l+0
	CLRF       _l+1
L_main19:
;MyProject.c,46 :: 		if(m>9)m=0;
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _m+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main30
	MOVF       _m+0, 0
	SUBLW      9
L__main30:
	BTFSC      STATUS+0, 0
	GOTO       L_main20
	CLRF       _m+0
	CLRF       _m+1
L_main20:
;MyProject.c,48 :: 		}
	GOTO       L_main0
;MyProject.c,50 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
