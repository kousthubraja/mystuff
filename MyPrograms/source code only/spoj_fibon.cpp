#include<cstdio>
#include<cmath>
//#include<conio.h>
float fib(long);
int main()
{
    int t,n,f,m,i=0;
    scanf("%d",&t);
    while(t--)
    {
              scanf("%d %d",&n,&m);
              f=(int)floor(fib(n));
              while(f<m){
              i++;
              n++;
              f=(int)floor(fib(n));
              }
              printf("%d\n",i);
    }
//    getch();
    return 0;
}

float fib(long n)
{
     const float PHI=(1+sqrt(5))/2;
     float f;
     f=pow(PHI,n)-pow((1-PHI),n);
     f=f/sqrt(5);
     return f;
}

/*
long fib(long n)
 {
  static long x,y;
  long temp;
  if(n<=1)
  {
   x=0;
   y=1;
  }
  else
  {
   fib(n-1);
   temp=y;
   y=x+y;
   x=temp;
  }
  return x;
}
*/
