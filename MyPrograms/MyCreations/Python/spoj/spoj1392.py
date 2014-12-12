t=input()

while t:
    n=input()
    s=1+n
    sq=int(n**.5)
    sqs=sq**2
    if sqs==n:
        sqs=1
    else:
        sqs=0
        
    l=int(sq+1)
    for i in range(2,l):
        if n%i==0:        
            s=s+i
            if i!=sq:
                s=s+n/i
            else:
                if not sqs:
                    s=s+n/i
    print s
    t-=1



##def chsq(n,sq):
##    if sq**2==n:
##        return 1
##    else:
##        return 0
