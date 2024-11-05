char array[]={0xC0,0xF9,0xA4,0xB0,0x99,0x92,0x82,0xF8,0x80,0x90};
void main() {
            int i=6543,dig1=0,dig2=0,dig3=0,dig4=0;
            TRISB=0x00;
            TRISC=0x00;
            PORTB=0x00;
            PORTC=0x00;
            
            while(1)
            {
              dig1=i/1000;
              dig2=((i%1000)/100);
              dig3=((i%100)/10);
              dig4=i%10;
              
              portc.f3=0x00;
              portc.f0=0xff;
              portb=array[dig1];
              delay_ms(5);
              
              portc.f0=0x00;
              portc.f1=0xff;
              portb=array[dig2];
              delay_ms(5);
              
              portc.f1=0x00;
              portc.f2=0xff;
              portb=array[dig3];
              delay_ms(10);
              
              portc.f2=0x00;
              portc.f3=0xff;
              portb=array[dig4];
              delay_ms(10);
            }
}