#include<stdio.h>

int main()
{
    char c;
    scanf("%c",&c);
    switch(c)
    {
             case 'a':
             case 'A':
             case 'E':
             case 'e':
             case 'I':
             case 'i':
             case 'O':
             case 'o':
             case 'U':
             case 'u':
                  printf("Vovel");
                  break;
             default:
                  printf("Not Vovel");
    }
    
    scanf("%d",&c);
}
    
