#include<iostream.h>
#include<conio.h>
#include<math.h>
#include<stdlib.h>
void main()
{
clrscr();
double i,n=1;
int f,j;
for(j=1;j<=20;j++)
{
n=n*j;
}

//cout<<n;
for(i=9699690;i<=n;i++)

{
  f=0;
  cout<<i<<'\t';
  for(j=2;j<=20;j++)
  {
    if(fmod(i,j)!=0){
    f=1;
    break;
    }
  }
  if(f==0){

  break;
  }

}
char *s;
  cout<<'\n'<<"Answer is :"<<ltoa(i,s,10);
getch();
}