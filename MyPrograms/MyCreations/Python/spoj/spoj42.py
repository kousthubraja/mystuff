t=int(input())
while t>0:
    t-=1
    
    n=input()
    s=n.split(" ")
    f=0
    f=int(s[0][::-1])+int(s[1][::-1])
    m=str(f)[::-1]
    m=str(int(m))
    print(m)
