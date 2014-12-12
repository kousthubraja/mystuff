#include<cstdio>
#include<cmath>
int modpow(double,double,double);

int main(){
    double a,b,c;
    scanf("%d %d %d",&a,&b,&c);
    printf("%d",modpow(a,b,c));
    scanf("%d");
}

int modpow(double b,double exp,double mod){
    int c;
    for(c=1;c<=exp;c++){
            c=fmod(c*b,mod);
    }
    return c;
}
