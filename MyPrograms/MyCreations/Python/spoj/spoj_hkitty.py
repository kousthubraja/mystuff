a=raw_input()
while a!=".":
    a=a.split()
    n=int(a[1])
    a=a[0]*n
    l=len(a)
    for i in range(0,l):
        t=a[0]
        t2=a[1:l]
        a=t2+t
        print a
    a=raw_input()
