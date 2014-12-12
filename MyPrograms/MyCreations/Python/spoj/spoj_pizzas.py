from math import ceil
t=input()
if t==0:
    print 1
else:
    s=0.0
    while t:
        n=raw_input()
        if n=="1/4":
            n=.25
        elif n=="1/2":
            n=.5
        elif n=="3/4":
            n=.75
        s+=n
        t-=1
    if s%1!=0:
        s=ceil(s)+1
    else:
        s=ceil(s)+2
    print int(s)
