#include<stdio.h>

int main()
{
    int dec,s,i=0;
    char bin[16];
    printf("Enter decimal number : ");
    scanf("%d",&dec);
    while(dec>0)
    {
        if(dec%2==1)
            bin[i]='1';
        else
            bin[i]='0';
        i++;
        dec/=2;
    }
    while(i--)
        printf("%c",bin[i]);
    printf("\n");
    return 0;
}
