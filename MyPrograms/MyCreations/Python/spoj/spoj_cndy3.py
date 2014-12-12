t=input()
while t:
    n=raw_input()
    n=input()
    j=n
    s=0
    while j:
        s+=input()
        j-=1
    if s%n==0:
        print "YES"
    else:
        print "NO"
    t-=1
