#include<stdio.h>

int main()
{
    int a,b;
    printf("Enter value of a and b : ");
    scanf("%d %d",&a,&b);
    printf("a = %d , b = %d",a,b);
    a+=b;
    b=a-b;
    a=a-b;
    printf("\nSwapped values : a = %d , b = %d",a,b);
    
    scanf("%d",&a);
}
    
