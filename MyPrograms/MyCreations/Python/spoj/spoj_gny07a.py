t=input()
for j in range(1,t+1):
    inp=raw_input()
    inp=inp.split()
    i=int(inp[0])
    s=inp[1]
    t=s[0:i-1]
    t+=s[i:len(s)]
    print str(j)+" "+t
