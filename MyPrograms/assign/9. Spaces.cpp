#include<stdio.h>

int main()
{
    char s[100];
    int i=0,state=0,count=0;
    gets(s);
    while(s[i]!=EOF)
    {
      if(s[i]==' ' && state==1)
      {
        state=0;
        count++;
      }
      else
        state=1;
      i++;
    }
    printf("Space is %d",count);
    scanf("%d",&s);
}
    
