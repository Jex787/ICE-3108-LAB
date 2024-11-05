#line 1 "J:/Study Object/3-1 course/microcontrolar/TarunSirLab_2018_19/stepperMotor/stEpperMotor.c"

 void main()
 {
 CMCON=0x07;
 ADCON1=0x06;
 TRISB=0;
 portb=0x0F;
#line 24 "J:/Study Object/3-1 course/microcontrolar/TarunSirLab_2018_19/stepperMotor/stEpperMotor.c"
 while(1)
 {
 portb=0b00000011;
 Delay_ms(500);
 portb=0b00000110;
 Delay_ms(500);
 portb=0b00001100;
 Delay_ms(500);
 portb=0b00001001;
 Delay_ms(500);


 }



 }
