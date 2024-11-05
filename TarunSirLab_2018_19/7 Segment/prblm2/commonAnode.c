void main() {
           int i=0;
           char arra[]={0x40,0x79,0x24,0x30,0x19,0x12,0x02,0x78,0x00,0x10};
           TRISB=0x00;
           portb=0xff;
           while(1)
           {
               portb=arra[i];
               delay_ms(500);
               i++;
               if(i==10)
                      i=0;


           }
}