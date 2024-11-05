void main() {
     short duty=0;
     TRISB=0x00;
     portb=0x00;

     while(1)
     {
          portb.f0=1;
          portb.f1=0;
          delay_ms(7000);
     }
}