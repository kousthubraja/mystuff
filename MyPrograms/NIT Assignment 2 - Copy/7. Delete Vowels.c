#include<stdio.h>

int main()
{
    char in[100],out[100];
    int i,j=0;
    
    printf("Enter the sentence : ");
    gets(in);
    for(i=0;in[i]!='\0';i++)
    {
        switch(in[i])
        {
           case 'a':case 'A':
           case 'e':case 'E':
           case 'i':case 'I':
           case 'o':case 'O':
           case 'u':case 'U':
                break;
           default:
                out[j++]=in[i];
        }
    }
    out[j]='\0';
    printf("The new sentence is : \n %s",out);
    return 0;
}
    
