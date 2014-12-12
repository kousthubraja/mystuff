t=input()
while t:
    inp=raw_input()
    inp=inp.split()
    n=inp[0]
    m=int(inp[1])
    mul=0
    for i in n:
            d=int(i)
            if d==0:
                mul*=10
            else:
                mul+=d*m
            
    print mul
    t-=1
