#include<cstdio>
#include<cmath>

int main()
{
    double n,f;
    int t;
    scanf("%d",&t);
    while(t--)
    {
        scanf("%d %d",&n,&f);
        n=fmod(n,(float)10);
        printf("Last : %d\n",n);
        if(n==0||n==1||n==5||n==6){
            printf("%d\n",n);
        }
        else if(n==2||n==3||n==7||n==8){
            n=pow((float)n,fmod(f,4));
            printf("%d\n",n);
        }    
        else{
            n=pow((float)n,fmod(f,2));  
            printf("%d\n",n);
        }   
    }
    return 0;
}
