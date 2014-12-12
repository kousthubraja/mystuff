n=2**1
lst=[]
while n<10**10:
    lst.append(n)
    n*=2
t=input()
while t:
    n=input()
    for i in lst:
        if i>n:
            print i
            break
    t-=1
