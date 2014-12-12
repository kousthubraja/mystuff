t=input()
while t!=-1:
    n=0
    m=0
    lst=[]
    for i in range(0,t):
        c=input()
        lst.append(c)
        n+=c
    if n%t==0:
        for i in lst:
            m+=n%i
        print m
    else:
        print -1
    t=input()
