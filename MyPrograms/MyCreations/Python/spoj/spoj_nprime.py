from math import floor
def isPrime(n):
    if n==1:
        return 0
    elif n<4:
        return 1
    elif n%2==0:
        return 0
    elif n<9:
        return 1
    elif n%3==0:
        return 0
    else:
        r=floor(n)
        f=5
        while f<=r:
            if n%f==0:
                return 0
            if n%(f+2)==0:
                return 0
            f=f+6
        return 1

while 1:
    n=input()
    t=1
    i=3
    while t<=n:
        i+=2
##        print i,t,n
        if isPrime(i):
            t+=1
    print i
