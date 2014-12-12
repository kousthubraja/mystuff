def check2(s):
    s=str(s)
    f=1
    for i in s:
        if int(i)>2:
            f=0
            break
    return f



s=0
for j in range(1,25):
    i=1
    while check2(j*i)!=1:
        i=i+1
    s=s+i

print(s)
