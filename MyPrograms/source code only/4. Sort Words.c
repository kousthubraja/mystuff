#include<stdio.h>
#include<string.h>

int main()
{
    char words[10][10],t[10];
    int i,j=0,n;
    
    printf("Enter the number of words : ");
    scanf("%d",&n);
    
    printf("Enter the words : ");
    for(i=0;i<n;i++)
       scanf("%s",words[i]);
       
    for(i=0;i<n;i++)
       for(j=0;j<n;j++)
          if(strcmp(words[j],words[j+1])>0)
          {
             strcpy(t,words[j]);
             strcpy(words[j],words[j+1]);
             strcpy(words[j+1],t);
          }

    printf("Enter sorted list is :\n");
    for(i=0;i<n;i++)
       printf("%s\n",words[i]);

       
    return 0;
}
    
