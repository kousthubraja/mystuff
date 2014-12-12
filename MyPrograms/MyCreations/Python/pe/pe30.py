def check(n,ex):
    t=str(n)
    s=0
    for i in t:
        d=int(i)
        s+=d**ex
    if s==n:
        return 1
    else:
        return 0
s=0
for i in range(2,1000000):
    t=check(i,5)
    if t==1:
        s+=i
print s
