a=1
b=1
while a>=0 and b>=0:
    inp=raw_input()
    if inp=="-1 -1":
        break
    inp=inp.split()
    a=int(inp[0])
    b=int(inp[1])
    s=0
    for i in range(a,b+1):
        j=str(i)
        for m in j:
            s+=int(m)
    print s
