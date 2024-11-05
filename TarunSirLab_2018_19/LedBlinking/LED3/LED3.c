int count=0;
void main() {
          TRISB=0x00;
          TRISC=0xff;
          portb.f0=0x00;
          while(1)
          {

                  if(portc.f1==1)
                  {
                         count=count+1;
                         if(count!=0)
                         {
                              portb.f0=1;
                              delay_ms(500);
                         }
                         else
                         {
                             portb.f0=0;
                         }
                  }
                  else
                  {
                      portb.f0=0;
                  }

          }
}