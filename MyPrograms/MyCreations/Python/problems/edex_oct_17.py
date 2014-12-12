n=13519.9
a=1501.5
b=1001
c=600.6
d=429
e=273
f=231
for p in range(0,int(n/a)+1):
    for q in range(0,int((n-a*p)/b)+1):
        for r in range(0,int((n-b*q)/c)+1):
            for s in range(0,int((n-c*r)/d)+1):
                for t in range(0,int((n-d*s)/e)+1):
                    for u in range(0,int((n-e*t)/f)+1):
                        if a*p+b*q+c*r+d*s+e*t+f*u==n:
                            print p,q,r,s,t,u
                            break
