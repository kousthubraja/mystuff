#include<stdio.h>
#include<math.h>

void sum();
void diff();
void mul();
void div();
void power();
void sine();
void cosine();

int main()
{
    int choice;
    
    printf("Enter the operation : \n");
    printf(" 1. Sum\n 2. Difference\n 3. Multiply\n 4. Divide\n 5. Power\n 6. Sine\n 7. Cosine\n");
    scanf("%d",&choice);
    switch(choice)
    {
        case 1:
            sum();
            break;
        case 2:
            diff();
            break;
        case 3:
            mul();
            break;
        case 4:
            div();
            break;
        case 5:
            power();
            break;
        case 6:
            sine();
            break;
        case 7:
            cosine();
            break;

        default:
            printf("Invalid Choice");
     }
    
    printf("\n");
    return 0;
}

void sum()
{
    int a,b;
    printf("Enter two numbers : ");
    scanf("%d %d",&a,&b);
    printf("Sum is %d",a+b);
}

void diff()
{
    int a,b;
    printf("Enter two numbers : ");
    scanf("%d %d",&a,&b);
    printf("%d - %d is %d",a,b,a-b);
}

void mul()
{
    int a,b;
    printf("Enter two numbers : ");
    scanf("%d %d",&a,&b);
    printf("%d * %d is %d",a,b,a+b);
}

void div()
{
    int a,b;
    printf("Enter two numbers : ");
    scanf("%d %d",&a,&b);
    printf("%d / %d is %d",a,b,a+b);
}

void power()
{
    float a,b;
    printf("Enter two numbers : ");
    scanf("%f %f",&a,&b);
    printf("%f raised to %f is %f",a,b,pow(a,b));
}

void sine()
{
    float a;
    printf("Enter the angle : ");
    scanf("%f",&a);
    printf("Sine of %f is %f",a,sin(a));
}

void cosine()
{
    float a;
    printf("Enter the angle : ");
    scanf("%f",&a);
    printf("Cosine of %f is %f",a,cos(a));
}
