void main() {
                   TRISB=0x00;
                   portb=0x00;
                   while(1)
                   {
                   portb=0x3f  ;
                   delay_ms(1000);
                   
                   portb=0x06  ;
                   delay_ms(1000);
                   
                   portb=0x5b  ;
                   delay_ms(1000);
                   
                   portb=0x4f  ;
                   delay_ms(1000);
                   
                   portb=0x66  ;
                   delay_ms(1000);
                   
                   portb=0x6d  ;
                   delay_ms(1000);
                   
                   portb=0x7d  ;
                   delay_ms(1000);
                   
                   portb=0x07  ;
                   delay_ms(1000);
                   
                   portb=0xff  ;
                   delay_ms(1000);
                   
                   portb=0x6f  ;
                   delay_ms(1000);
                   
                   }
}