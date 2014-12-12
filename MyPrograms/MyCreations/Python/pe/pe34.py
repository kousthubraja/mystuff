def fact(n):
    f=1
    for i in range(2,n+1):
        f*=i
    return f

def check(n):
    t=str(n)
    f=0
    for i in t:
        f+=fact(int(i))
    if f==n:
        return 1
    else:
        return 0

s=0
for i in range(1,1000000):
    f=check(145)
    if f:
        s+=i
print s
