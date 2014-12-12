#include<stdio.h>
#include<conio.h>
#include<bcd.h>
int main(){
double a,b,i=1,t;
clrscr();
scanf("%d",&t);
printf("%d",t);
for(i=1;i<=real(t);i++)
{
scanf("%d",&a);
scanf("%d",&b);
printf("%d",a+b);
}
return 0;
}