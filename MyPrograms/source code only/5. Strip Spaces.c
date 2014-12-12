#include<stdio.h>

int main()
{
    char in[100],out[100],state=0;
    int i,j=0;
    
    printf("Enter the sentence : ");
    gets(in);
    
    for(i=0;in[i]!='\0';i++)
    {
        if(in[i]==' ' && state==1)
        {
            out[j++]=' ';
            state=0;
        }
        else if(in[i]!=' ')
        {
            out[j++]=in[i];
            state=1;
        }
    }
    out[j]='\0';
    printf("The new sentence is : \n%s",out);
    return 0;
}
    
