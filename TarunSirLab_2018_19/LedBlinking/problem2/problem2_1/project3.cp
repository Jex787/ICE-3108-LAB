#line 1 "C:/Users/mituk/OneDrive/Desktop/MicroController/problem2/problem2_1/project3.c"
void main() {
 int state=0;
 TRISB=0x00;
 TRISD=0xff;
 portb.f0=0;
 while(1)
 {
 if(portd.f0==1)
 {
 delay_ms(500);
 if(portd.f0==1)
 {
 if(state==0)
 {
 state=1;
 }
 else
 {
 state=0;
 }
 }
 }
 if(state==0)
 portb.f0=0;
 else
 portb.f0=1;
 }
}
