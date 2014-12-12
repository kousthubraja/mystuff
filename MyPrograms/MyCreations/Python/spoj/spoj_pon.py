def cp(n):
    if (n%2==0 and n!=2) or n==1:
        return 0
    else:
        for i in range(3,int(n**.5)+1,2):
            if n%i==0:
                return 0
    return 1

t=int(input())
while t:
    n=int(input())
    if cp(n):
        print("YES")
    else:
        print("NO")
    t-=1
