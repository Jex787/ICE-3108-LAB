char arr[]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
void main() {
int i = 0,right = 0, left = 0,j;
trisb = 0x00;
trisc = 0x00;

portb = 0x00;
portc = 0x00;
while(1)
{
     left = i/10;
     right = i%10;
     for(j=0;j<10;j++){
     portb = arr[left];
     portc.f0 = 0;
     delay_ms(10);
     portc.f0 = 1;

     portb = arr[right];
     portc.f1 = 0;
     delay_ms(10);
     portc.f1 = 1;
  }
  if(i>=99)
  i=0;
i++;
}


}