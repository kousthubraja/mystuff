t=input()
while t:
    n=input()
    men=raw_input()
    men=men.split()
    women=raw_input()
    women=women.split()
    men.sort()
    women.sort()
    s=0
    for i in range(0,n):
        m=int(men[i])
        w=int(women[i])
        s+=m*w
    print s
    t-=1
