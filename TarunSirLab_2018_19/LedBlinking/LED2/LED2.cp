#line 1 "J:/Study Object/3-1 course/TarunSirLab_2018_19/LedBlinking/LED2/LED2.c"
void main() {
 TRISB=0x00;
 TRISC=0x00;
 portb=0x00;
 portc=0x00;
 while(1)
 {
 portb.f0=1;
 portb.f5=0;
 portc.f2=0;
 delay_ms(100);

 portb.f0=0;
 portb.f5=1;
 portc.f2=0;
 delay_ms(100);

 portb.f0=0;
 portb.f5=0;
 portc.f2=1;
 delay_ms(100);
 }

}
