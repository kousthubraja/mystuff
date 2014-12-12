#include<iostream.h>
#include<conio.h>
void main(){
clrscr();
long a=0,b=0,x=1,sum=0;
while(x<4000000)
{
cout<<x<<'\t';
a=b;
b=x;
x=a+b;
if(x%2==0){sum=sum+x;}
}
cout<<'\n'<<sum;
getch();
}