def count(n):
    i=1
    while n>1:
        if n%2==0:
            n=n/2
        else:
            n=3*n+1
        i+=1
    return i

m=0
for k in range(1,1000000):
    c=count(k)
    if c>m:
        n=k
        m=c
print n,m
