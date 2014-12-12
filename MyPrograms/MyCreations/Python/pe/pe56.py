m=0
for a in range(1,100):
    for b in range(1,100):
        p=a**b
        s=str(p)
        su=0
        for i in s:
            su=su+int(i)
        if su>m:
            m=su
print(m)
            
