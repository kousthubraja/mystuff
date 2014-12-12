def sof(n):
    s=0
    for i in range(1,int(n/2)+1):
        if n%i==0:
            s+=i
    return s

for i in range(1,10000):
    t=sof(i)
    if i==t:
        print(t)
