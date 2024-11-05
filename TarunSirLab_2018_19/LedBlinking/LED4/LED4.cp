#line 1 "J:/Study Object/3-1 course/TarunSirLab_2018_19/LedBlinking/LED4/LED4.c"
void main()
{
 int i=0;
 TRISB=0x00;
 TRISC=0xff;
 portb.f0=0;
 while(1)
 {
 if(portc.f1==1)
 {

 if(portc.f1==1)
 {
 if(i==0)
 {
 i=1;
 }
 else
 {
 i=0;
 }
 }
 }
 if(i==0)
 {
 portb.f0=0;
 delay_ms(200);
 }
 else
 {
 portb.f0=1;
 delay_ms(200);
 }
 }
}
