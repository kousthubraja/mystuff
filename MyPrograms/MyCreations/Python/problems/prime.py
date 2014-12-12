a=input("Input : ")
a=a.partition(" ")
l1=int(a[0])
l2=int(a[2])
i=l1
n=0
while i<=l2:
    j=2
    f=0
    while j<=(i/2):
        if i%j==0:
            f=1
            break
        j+=1
    if f==0:
        print(i)
        n=n+1
    i+=1
print("Total "+str(n))
