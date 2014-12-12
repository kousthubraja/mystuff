#include<stdio.h>
#include<math.h>

int main()
{
    float a,b,c,r1,r2;
    printf("Enter the co-efficients as in  ax^2 + bx + c = 0 : ");
    scanf("%f %f %f",&a,&b,&c);
    r1=(-b+sqrt(b*b-4*a*c))/(2*a);
    r2=(-b-sqrt(b*b-4*a*c))/(2*a);
    printf("Roots are %f %f\t",r1,r2);
    scanf("%f",&a);
}
