def tobin(n):
    s=""
    while(n>=1):
        s=s+str(n%2)
        n=int(n/2)
    return s[::-1]


s=0
for i in range(1,1000000):
    str_i=str(i)
    p=str_i[::-1]
    bin_i=tobin(i)
    if(str_i==p and bin_i==bin_i[::-1]):
        s=s+i
print(s)
