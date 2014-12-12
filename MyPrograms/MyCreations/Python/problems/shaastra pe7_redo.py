from math import *

def chexp(n,ex):
    rt=n**(1.0/ex)
    p=pow(rt,ex)
    if n==p:
        return 1
    else:
        return 0


##plist=[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37]
plist=[2.0,3.0]
n=1
while 1:
    f=1
    for p in plist:
        t=(n/p)
        print n,p,t,chexp(t,p),f
        if not chexp(t,p):
            f=0
            break
    if f==1:
        print n
        break
    n+=1
