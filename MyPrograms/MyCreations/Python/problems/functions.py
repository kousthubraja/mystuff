from math import *

def fact(n):
    f=1
    for i in range(2,n+1):
        f*=i
    return f


def isPrime(n):
    if n==1:
        return false
    elif n<4:
        return true
    elif n%2==0:
        return false
    elif n<9:
        return true
    elif n%3==0:
        return false
    else:
        r=floor(n)
        f=5
        while f<=r:
            if n%f==0:
                return false
            if n%(f+2)==0:
                return false
            f=f+6
        return true
