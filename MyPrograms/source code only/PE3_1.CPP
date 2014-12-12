#include<iostream.h>
#include<conio.h>
#include<math.h>
#include<stdlib.h>
void main()
{
clrscr();
double n=600851475143,h=n/2;
double f=0,i;
char *s;
/*if(fmod(n,2)!=0)
  {
	n-=1;
  }*/
cout<<ltoa(h,s,10)<<'\n';

for(i=n/2;i>=0;i--)
{
  if(fmod(n,i)==0)
  {
  cout<<ltoa(i,s,10)<<'\n';
  f=1;
  break;
  }
  //cout<<i<<'\t';
}

if(f==0){
cout<<"prime";
}
else
{
cout<<ltoa(n/i,s,10);
}
getch();
}