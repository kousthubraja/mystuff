from math import *

def isprime(n):
    f=0
    for i in range(2,int(n/2)):
        if n%i==0:
            f=1
            break
    if f==1:
        return 0
    else:
        return 1

for i in range(859081845,1000000007):
    f=0
    for j in range(2,38):
        if isprime(j)==1:
            if i/j==i**(1/j):
                f=1
            else:
                f=0
    if f==1:
        print(i)
        break
