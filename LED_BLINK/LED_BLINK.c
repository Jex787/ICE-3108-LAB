void main() {
       TRISB=0x00;
       PORTB=0x00;
    while(1){
       portb.f0=0xff;
       delay_ms(1000);
       portb.f0=0x00;
       delay_ms(1000);
    }
       
}