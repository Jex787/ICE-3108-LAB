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