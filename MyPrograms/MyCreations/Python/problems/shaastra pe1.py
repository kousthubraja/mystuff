from math import *
import time

def cp(n):
    if n%2==0:
        return 0
    else:
        for i in range(3,int(sqrt(n))+1,2):
            if n%i==0:
                return 0
    return 1

def weight(n):
    w=1
    ex=1
    if n%2==0:
        w=2
        ex=2
    for i in range(3,int(n**.5+1),2):
        if n%i==0:
            if cp(i):
                w*=i**ex
                ex+=1
    return w


s=0
t= time.time()
for i in range(2,1000000):
    s=s+weight(i)
print(s)

r=1000000007
t=time.time()-t
print(s%r,t)
