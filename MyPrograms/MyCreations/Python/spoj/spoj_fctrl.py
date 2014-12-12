t=input("")
while t:
    n=input("")
    f=0
    j=5
    while j<=n:    
        f+=int(n/j)
        j*=5
    print(f)
    t-=1
