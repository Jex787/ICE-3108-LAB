void main() {
             int i=0;
             char arra[]={0x40,0x79,0x24,0x30,0x19,0x12,0x02,0x78,0x00,0x10};

             TRISB=0x00;
             
             TRISC=0xff;
             TRISD=0xff;
             portb=0xff;

             while(1)
             {
                     if(portc.f5==1)
                     {
                             //delay_ms(200);
                             portb=arra[i];
                             delay_ms(400);
                             i++;
                             if(i==10)
                             {
                                  i=0;
                             }
                     }

                     if(portd.f1==1)
                     {
                             //delay_ms(200);
                              if(i<=0)
                             {
                                  i=10;
                             }
                             portb=arra[i-1];
                             delay_ms(400);
                             i--;

                     }
             }
}