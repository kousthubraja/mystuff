def fact(n):
    f=1
    for i in range(2,n+1):
        f*=i
    return f

for i in range(1,100):
    print i,len(str(fact(i)))
