void main() {
     char arr[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
     int i=0,j=0,tmp=0,d1,d2,d3,d4;
     trisb=0x00;
     trisc=0x00;
     portb=0xff;
     portc=0x00;
     portb=arr[0];
     while(1)
     {
       if(i>9999)i=0;
       tmp=i;
       d4=tmp%10;
       tmp/=10;
       d3=tmp%10;
       tmp/=10;
       d2=tmp%10;
       d1=tmp/10;
       for(j=0;j<1;j++)
       {
                        //     for 4th digit
         portc.f3=0;
         portb=arr[d4];
         delay_ms(5);
         portc.f3=1;

                    //         for 3rd digit
         portc.f2=0;
         portb=arr[d3];
         delay_ms(5);
         portc.f2=1;

                    //         for 2nd digit
         portc.f1=0;
         portb=arr[d2];
         delay_ms(5);
         portc.f1=1;

                     //     for 1st digit
         portc.f0=0;
         portb=arr[d1];
         delay_ms(5);
         portc.f0=1;
         }
         i++;
     }
}