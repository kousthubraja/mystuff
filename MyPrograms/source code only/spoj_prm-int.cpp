#include<cstdio>
#include<cmath>
bool cp(long);

int main()
{
    long n;
    int a,b;
    scanf("%d",&n);
             printf("%d\n",cp(n));
             scanf("%d %d",&a,&b);
    
    
    
    return 0;
}
bool cp(long n)
{
    if(n%2==0||n==1){
        return 0;
        }
    else{
        for(int i=1;i<=sqrt(n);i++){
            if(n%i==0)
                return 0;
        }
        }
    return 1;
}
