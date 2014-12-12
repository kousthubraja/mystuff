#include<iostream.h>
#include<conio.h>
#include<math.h>
#include<stdlib.h>
void main()
{
clrscr();
double n=25,f=0,i;//600851475143,f=0,i;
char *s;

for(i=n/2;i>=0;i--)
{
  if(fmod(n,i)==0)
  {
  f=1;break;
  }
  cout<<i<<'\t';
}
if(f==0){
cout<<"prime";
}
else
{
cout<<ltoa(i,s,10);
}
getch();
}