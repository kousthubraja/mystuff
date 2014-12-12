t=input()
while t:
    inp=raw_input()
    inp=inp.split()
    a=int(inp[0])
    b=int(inp[1])
    
    c=a*a
    c=c+b*b
    c=c**.5
    ic=int(c)
    if c==ic:
        print "YES",ic
    else:
        print "NO"
    t-=1
