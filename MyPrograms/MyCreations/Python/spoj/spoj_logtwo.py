from math import *
t=input()
while t:
    n=input()
    l=int(log(n,2))
    if 2**int(l)==n:
        print l
    else:
        print "NO"
    t-=1
