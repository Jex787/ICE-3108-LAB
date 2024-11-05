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