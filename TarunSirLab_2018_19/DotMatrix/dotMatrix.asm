
_MSDelay:

;dotMatrix.c,1 :: 		void MSDelay(unsigned char Time)
;dotMatrix.c,4 :: 		for(y=0;y<Time;y++)
	CLRF       R1+0
L_MSDelay0:
	MOVF       FARG_MSDelay_Time+0, 0
	SUBWF      R1+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_MSDelay1
;dotMatrix.c,6 :: 		for(z=0;z<20;z++);
	CLRF       R2+0
L_MSDelay3:
	MOVLW      20
	SUBWF      R2+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_MSDelay4
	INCF       R2+0, 1
	GOTO       L_MSDelay3
L_MSDelay4:
;dotMatrix.c,4 :: 		for(y=0;y<Time;y++)
	INCF       R1+0, 1
;dotMatrix.c,7 :: 		}
	GOTO       L_MSDelay0
L_MSDelay1:
;dotMatrix.c,8 :: 		}
L_end_MSDelay:
	RETURN
; end of _MSDelay

_main:

;dotMatrix.c,10 :: 		void main()
;dotMatrix.c,12 :: 		TRISC=0x00;
	CLRF       TRISC+0
;dotMatrix.c,13 :: 		TRISD=0x00;
	CLRF       TRISD+0
;dotMatrix.c,14 :: 		while(1)
L_main6:
;dotMatrix.c,16 :: 		PORTD=0x80;
	MOVLW      128
	MOVWF      PORTD+0
;dotMatrix.c,17 :: 		PORTC=0xc3;
	MOVLW      195
	MOVWF      PORTC+0
;dotMatrix.c,18 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	CALL       _MSDelay+0
;dotMatrix.c,20 :: 		PORTD=0x40;
	MOVLW      64
	MOVWF      PORTD+0
;dotMatrix.c,21 :: 		PORTC=0xc3;
	MOVLW      195
	MOVWF      PORTC+0
;dotMatrix.c,22 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	CALL       _MSDelay+0
;dotMatrix.c,24 :: 		PORTD=0x20;
	MOVLW      32
	MOVWF      PORTD+0
;dotMatrix.c,25 :: 		PORTC=0xc3;
	MOVLW      195
	MOVWF      PORTC+0
;dotMatrix.c,26 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	CALL       _MSDelay+0
;dotMatrix.c,28 :: 		PORTD=0x10;
	MOVLW      16
	MOVWF      PORTD+0
;dotMatrix.c,29 :: 		PORTC=0xff;
	MOVLW      255
	MOVWF      PORTC+0
;dotMatrix.c,30 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	CALL       _MSDelay+0
;dotMatrix.c,32 :: 		PORTD = 0x08;
	MOVLW      8
	MOVWF      PORTD+0
;dotMatrix.c,33 :: 		PORTC = 0xff;
	MOVLW      255
	MOVWF      PORTC+0
;dotMatrix.c,34 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	CALL       _MSDelay+0
;dotMatrix.c,36 :: 		PORTD =0x04;
	MOVLW      4
	MOVWF      PORTD+0
;dotMatrix.c,37 :: 		PORTC =0xc3,
	MOVLW      195
	MOVWF      PORTC+0
;dotMatrix.c,38 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	CALL       _MSDelay+0
;dotMatrix.c,40 :: 		PORTD = 0x02;
	MOVLW      2
	MOVWF      PORTD+0
;dotMatrix.c,41 :: 		PORTC = 0xc3,
	MOVLW      195
	MOVWF      PORTC+0
;dotMatrix.c,42 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	CALL       _MSDelay+0
;dotMatrix.c,44 :: 		PORTD = 0x01;
	MOVLW      1
	MOVWF      PORTD+0
;dotMatrix.c,45 :: 		PORTC = 0xc3;
	MOVLW      195
	MOVWF      PORTC+0
;dotMatrix.c,46 :: 		MSDelay(10);
	MOVLW      10
	MOVWF      FARG_MSDelay_Time+0
	CALL       _MSDelay+0
;dotMatrix.c,48 :: 		}
	GOTO       L_main6
;dotMatrix.c,49 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
