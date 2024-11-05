
_main:

;buttonPWM.c,1 :: 		void main()
;buttonPWM.c,3 :: 		short duty=0;
	CLRF       main_duty_L0+0
;buttonPWM.c,4 :: 		TRISD=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;buttonPWM.c,5 :: 		TRISB=0x00;
	CLRF       TRISB+0
;buttonPWM.c,6 :: 		portb.f0=0xff;
	BSF        PORTB+0, 0
;buttonPWM.c,7 :: 		portb.f1=0x00;
	BCF        PORTB+0, 1
;buttonPWM.c,9 :: 		PWM1_Init(1000);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      124
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;buttonPWM.c,10 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;buttonPWM.c,11 :: 		PWM1_Set_Duty(duty);
	MOVF       main_duty_L0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;buttonPWM.c,13 :: 		while(1)
L_main0:
;buttonPWM.c,15 :: 		if(RD0_bit && duty<250)
	BTFSS      RD0_bit+0, 0
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
;buttonPWM.c,17 :: 		Delay_ms(100);
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
;buttonPWM.c,18 :: 		if(RD0_bit && duty<250)
	BTFSS      RD0_bit+0, 0
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
;buttonPWM.c,20 :: 		duty=duty+10;
	MOVLW      10
	ADDWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
;buttonPWM.c,21 :: 		PWM1_Set_Duty(duty);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;buttonPWM.c,22 :: 		}
L_main8:
;buttonPWM.c,23 :: 		}
L_main4:
;buttonPWM.c,24 :: 		if(RD1_bit && duty>0)
	BTFSS      RD1_bit+0, 1
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
;buttonPWM.c,26 :: 		Delay_ms(100);
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
;buttonPWM.c,27 :: 		if(RD1_bit && duty>0)
	BTFSS      RD1_bit+0, 1
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
;buttonPWM.c,29 :: 		duty=duty-10;
	MOVLW      10
	SUBWF      main_duty_L0+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      main_duty_L0+0
;buttonPWM.c,30 :: 		PWM1_Set_Duty(duty);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;buttonPWM.c,31 :: 		}
L_main15:
;buttonPWM.c,32 :: 		}
L_main11:
;buttonPWM.c,33 :: 		Delay_ms(10);
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
;buttonPWM.c,34 :: 		}
	GOTO       L_main0
;buttonPWM.c,35 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
