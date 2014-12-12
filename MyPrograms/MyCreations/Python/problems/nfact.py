from math import *

def nfact(n):
    t=2
    sq=int(sqrt(n))
    for i in range(1,sq+1):
        if n%i==0:
            t+=2
        if i==sq:
            t-=1
    return t

f=0
i=1
while f<=100:
    i+=1
    f=nfact(i)
print i
