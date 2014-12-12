#include<stdio.h>

int main()
{
	char c;
    int count=0;
    c=getchar();
    while(c!=13)
	{
      if(c==' ')
        count++;
	  c=getchar();
	}
    printf("Space is %d",count);
    scanf("%d",&s);
}
    
