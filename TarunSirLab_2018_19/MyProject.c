char segment[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
int i=0,j=0,k=0,l=0,m=0;
void main() {
     trisb=0x00;
     trisc=0x00;
     portb=0x00;
     portc=0x00;
     trisd=0xff;
     portd=0;
     while(1){

          portc.f0=0;
          portb=segment[i];
          delay_ms(10);
          portc.f0=1;

          portc.f1=0;
          portb=segment[j];
          delay_ms(10);
          portc.f1=1;

          portc.f2=0;
          portb=segment[l];
          delay_ms(10);
          portc.f2=1;

          portc.f3=0;
          portb=segment[m];
          delay_ms(10);
          portc.f3=1;
      if(portd.f0==1){    //for increment
          if(k==0)i++;
         if(k==1)j++;
         if(k==2)l++;
         if(k==3)m++;
         while(portd.f0==1);
      }
      if(portd.f1==1){
         k++;
         while(portd.f1==1);
      }
      if(k>3)k=0;
      if(i>9)i=0;
      if(j>9)j=0;
      if(l>9)l=0;
      if(m>9)m=0;

     }

}