def d(n):
    s=0
    for i in range(1,int(n/2)+1):
        if n%i==0:
            s+=i
    return s

s=0
for a in range(1,10000):
    b=d(a)
    if(a==d(b) and b!=a):
       print(a,d(a))
       s+=d(a)
print(s)


##print(220,d(d(220)))
##if(d(220)==):
##       print(d(284))

##print(d(220),d(d(220)))
