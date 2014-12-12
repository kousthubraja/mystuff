#include<stdio.h>
#include<math.h>
#include<string.h>

int main()
{
    int dec=0,s,i=0,len,j=0;
    char bin[16];
    printf("Enter binary number : ");
    scanf("%s",bin);
    len=strlen(bin);
    for(i=len-1;i>=0;i--,j++)
    {
        if(bin[i]=='1')
                dec+=pow(2,j);
    }            
    printf("Decimal value is %d",dec);
    printf("\n");
    return 0;
}
