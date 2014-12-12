#include<cstdio>
#include<new>
#include<array>
using namespace std;
bool sieve(int);
int main()
{
    int i,n=100;
    bool *prime;
    prime=new bool[n+1];
   Arrays.fill(prime,true);
   prime[0]=false;
   prime[1]=false;
   int m=Math.sqrt(n);

   for (int i=2; i<=m; i++)
      if (prime[i])
         for (int k=i*i; k<=n; k+=i)
            prime[k]=false;


   
    for(i=1;i<=100000;i++)
    {
       if(prime[i])printf("%d\n",a[i]);
    }
    scanf("%d");
    return 0;
}


