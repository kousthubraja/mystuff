from math import*
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
        r=floor(n**.5)
        f=5
        while f<=r:
            if n%f==0:
                return 0
            if n%(f+2)==0:
                return 0
            f=f+6
        return 1

t=int(input())
while t:
    ans=""
    y=0
    inp=raw_input()
    inp=inp.split(" ")
    l=int(inp[0])
    u=int(inp[1])
    for i in range(l,u+1):
        if isPrime(i):
            if y!=0:
                ans=ans+"\n"+str(i)
            else:
                ans=str(i)
                y=1
    print ans
    t-=1
