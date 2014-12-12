#include<stdio.h>
#include<string.h>

int main()
{
    char str[100],sub[20];
    int i,j=0;
    
    printf("Enter the full string : ");
    gets(str);
    printf("Enter the sub string : ");
    gets(sub);
    if(strstr(str,sub))
        printf("Substring found");
    else
        printf("Substring Not found");
    return 0;
}
    
