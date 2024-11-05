#line 1 "J:/Study Object/3-1 course/TarunSirLab_2018_19/LedBlinking/LED6/led6.c"
void main() {
 TRISB=0x00;
 TRISD=0xff;
 portb=0;
 while(1)
 {
 if(portd.f0==1)
 {
 portb.f0=1;

 portb.f5=0;
 delay_ms(500);

 portb.f0=0;

 portb.f5=1;
 delay_ms(500);
 }
 else
 {
 portb.f0=0;
 portb.f5=0;
 }
 }
}
