void main() {
             int count=0;
             TRISD=0xff;
             TRISB=0x00;
             portb.f0=0;
             while(1)
             {

                   if(portd.f0==1)
                   {    delay_ms(200);
                        if(count==0)
                            count=1;
                        else
                            count=0;
                   }
                   if(count==0)
                   {
                       portb.f0=0;
                       portb.f5=0;
                       delay_ms(200);
                   }
                   else
                   {
                       portb.f0=1;
                       portb.f5=1;
                       delay_ms(200);
                   }
             
             }
}