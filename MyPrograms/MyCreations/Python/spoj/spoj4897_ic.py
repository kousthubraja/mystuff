nlist=[]
##alist=[]
n=0
while 1:
    inp=raw_input()
    inp=inp.split()
    nlist.append(inp[0])
##    alist.append(inp[1])
    for i in nlist:
        for j in nlist:
            if i>j:
                t=i
                nlist[n]=j
                nlist[n]=t
    n+=1
    print nlist
