#line 1 "J:/Study Object/3-1 course/TarunSirLab_2018_19/LedBlinking/LED1/LED.c"
void main() {
 TRISC=0x00;
 portc=0x00;
 while(1)
 {
 portc.f0=1;
 portc.f3=1;
 delay_ms(1000);
 portc.f0=0;
 portc.f3=0;
 delay_ms(1000);
 }
}
