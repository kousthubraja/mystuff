#include<stdio.h>

int main()
{
    long byear,bmonth,bday,bt;
    long pyear,pmonth,pday,pt;
    long yd,md,dd,diff;

    printf("Enter born year date and month : ");
    scanf("%ld %ld %ld",&byear,&bmonth,&bday);
    printf("Enter present year date and month : ");
    scanf("%ld %ld %ld",&pyear,&pmonth,&pday);
    
    bt=byear*365+bmonth*30+bday;
    pt=pyear*365+pmonth*30+pday;
//    printf("%ld %ld",byear,pyear);
    diff=pt-bt;
    yd=diff/365;
    md=(diff%365)/30;
    dd=(diff%30);
    
    printf("%ld years %ld months %ld days",yd,md,dd);
    printf("\n");
    return 0;
}
