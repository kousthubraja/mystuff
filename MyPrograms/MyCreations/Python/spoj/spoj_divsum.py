t=input()
while t:
    n=input()
    s=1
    sq=n**.5
    for i in range(2,int(sq+1)):
        if n%i==0:
            s+=i
            if i!=sq:
                s+=n/i
    print s
    t-=1
