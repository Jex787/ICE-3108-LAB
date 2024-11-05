
_main:

;commonAnode.c,1 :: 		void main() {
;commonAnode.c,2 :: 		int i=0;
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
;commonAnode.c,4 :: 		TRISB=0x00;
	CLRF       TRISB+0
;commonAnode.c,5 :: 		portb=0xff;
	MOVLW      255
	MOVWF      PORTB+0
;commonAnode.c,6 :: 		while(1)
L_main0:
;commonAnode.c,8 :: 		portb=arra[i];
	MOVF       main_i_L0+0, 0
	ADDLW      main_arra_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;commonAnode.c,9 :: 		delay_ms(500);
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
;commonAnode.c,10 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;commonAnode.c,11 :: 		if(i==10)
	MOVLW      0
	XORWF      main_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main5
	MOVLW      10
	XORWF      main_i_L0+0, 0
L__main5:
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;commonAnode.c,12 :: 		i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main3:
;commonAnode.c,15 :: 		}
	GOTO       L_main0
;commonAnode.c,16 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
