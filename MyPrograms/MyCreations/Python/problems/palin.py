t=int(input())
while t>0:
    n=input("")
    print("ff")
    n=int(n)
    n=str(n)
    l=len(n)
    if l==1:
        print(int(n)+1)
    if l%2==0:
        tmp=n[0:int(l/2)]
        tn=int(tmp)+1
        tmp=str(tn)
        n=tmp+tmp[::-1]
    else:
        tmp0=n[0:int((l)/2)]
        tmp1=n[int((l)/2):int((l+1)/2)]
        tmp2=n[int((l+1)/2):l]
        print(tmp0,tmp1,tmp2)
    print(n)
    t-=1
