
_main:

;PWM.c,1 :: 		void main() {
;PWM.c,2 :: 		short duty = 0; // initial value for duty
	CLRF       main_duty_L0+0
;PWM.c,4 :: 		TRISD = 0xFF;  // PORTD as input
	MOVLW      255
	MOVWF      TRISD+0
;PWM.c,5 :: 		TRISB = 0x00;  // PORTB as output
	CLRF       TRISB+0
;PWM.c,8 :: 		PORTB.F0 = 0xFF;
	BSF        PORTB+0, 0
;PWM.c,9 :: 		PORTB.F1 = 0x00;
	BCF        PORTB+0, 1
;PWM.c,11 :: 		PWM1_Init(1000); // Initialize PWM1
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      124
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;PWM.c,12 :: 		PWM1_Start();   // Start PWM1
	CALL       _PWM1_Start+0
;PWM.c,13 :: 		PWM1_Set_Duty(duty); // Set current duty for PWM1
	MOVF       main_duty_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;PWM.c,15 :: 		while (1) { // endless loop
L_main0:
;PWM.c,16 :: 		if (RD0_bit && duty < 250) { // if button on RD0 pressed
	BTFSS      RD0_bit+0, BitPos(RD0_bit+0)
	GOTO       L_main4
	MOVLW      128
	BTFSC      main_duty_L0+0, 7
	MOVLW      127
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main22
	MOVLW      250
	SUBWF      main_duty_L0+0, 0
L__main22:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
L__main20:
;PWM.c,17 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;PWM.c,18 :: 		if (RD0_bit && duty < 250) {
	BTFSS      RD0_bit+0, BitPos(RD0_bit+0)
	GOTO       L_main8
	MOVLW      128
	BTFSC      main_duty_L0+0, 7
	MOVLW      127
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main23
	MOVLW      250
	SUBWF      main_duty_L0+0, 0
L__main23:
	BTFSC      STATUS+0, 0
	GOTO       L_main8
L__main19:
;PWM.c,19 :: 		duty = duty + 10; // increment current_duty
	MOVLW      10
	ADDWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
;PWM.c,20 :: 		PWM1_Set_Duty(duty); // Change the duty cycle
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;PWM.c,21 :: 		}
L_main8:
;PWM.c,22 :: 		}
L_main4:
;PWM.c,24 :: 		if (RD1_bit && duty > 0) { // button on RD1 pressed
	BTFSS      RD1_bit+0, BitPos(RD1_bit+0)
	GOTO       L_main11
	MOVLW      128
	XORLW      0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_duty_L0+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main11
L__main18:
;PWM.c,25 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	DECFSZ     R11+0, 1
	GOTO       L_main12
	NOP
;PWM.c,26 :: 		if (RD1_bit && duty > 0) {
	BTFSS      RD1_bit+0, BitPos(RD1_bit+0)
	GOTO       L_main15
	MOVLW      128
	XORLW      0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_duty_L0+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main15
L__main17:
;PWM.c,27 :: 		duty = duty - 10; // decrement duty
	MOVLW      10
	SUBWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
;PWM.c,28 :: 		PWM1_Set_Duty(duty);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;PWM.c,29 :: 		}
L_main15:
;PWM.c,30 :: 		}
L_main11:
;PWM.c,32 :: 		Delay_ms(10); // slow down change pace a little
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	NOP
;PWM.c,33 :: 		}
	GOTO       L_main0
;PWM.c,34 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
