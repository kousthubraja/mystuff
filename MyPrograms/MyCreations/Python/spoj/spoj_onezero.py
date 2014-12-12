t=input()
while t:
    n=input()
    f=0
    i=1
    while 1:
        m=n*i
        m=str(m)
        if not('2' in m or '3' in m or '4' in m or '5' in m or '6' in m or '7' in m or '8' in m or '9' in m):
            print m
            break
        i+=1
    t-=1
