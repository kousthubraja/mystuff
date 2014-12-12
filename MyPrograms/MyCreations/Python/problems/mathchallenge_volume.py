i=81
n=0
while n!=1:
    for j in str(i):
        print(j)
        if int(j)%2==0:
            n=1
        else:
            n=0
            break
    if n==1:
        print(i)
        break
    i+=9
    
    
