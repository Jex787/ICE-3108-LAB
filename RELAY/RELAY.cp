#line 1 "C:/Users/HP/Desktop/RELAY/RELAY.c"
void main() {
 TRISB=0x00;
 PORTB=0x00;
 while(1){
 PORTB.f0=0xff;
 delay_ms(1000);
 PORTB.f0 =0x00;
 delay_ms(1000);
 }
}
