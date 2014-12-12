t=int(input())
while t>0:
    t-=1
    
    n=int(input())
    f=1
    while f>0:
        s=str(n+f)
        if s==s[::-1]:
            print(s)
            break
        f+=1
##exit(0)
