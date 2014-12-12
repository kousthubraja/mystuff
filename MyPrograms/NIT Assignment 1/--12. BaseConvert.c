#include<stdio.h>

int main()
{
    int dec,s,i=0,choice;
    char bin[16];
    printf("Enter decimal number : ");
    scanf("%d",&dec);
    
    printf("Enter number system to be converted :\n");
    printf(" 1. Hex\n 2. Octal\n 3. Binary\n");
    scanf("%d",&choice);
    switch(choice)
    {
        case 1:
            printf("%x",dec);
            break;
        case 2:
            printf("%o",dec);
            break;
        case 3:
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
            break;
        default:
            printf("Invalid Choice");
     }
    
    printf("\n");
    return 0;
}
