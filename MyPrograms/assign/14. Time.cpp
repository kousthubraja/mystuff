#include<stdio.h>

int main()
{
    int t,sec,hour,min;
    printf("Enter the time in seconds : ");
    scanf("%d",&t);
    hour=t/3600;
    min=(t%3600)/60;
    sec=t%60;

    printf("%d Hours %d Minutes %d Seconds",hour,min,sec);
    scanf("%f",&t);
}
