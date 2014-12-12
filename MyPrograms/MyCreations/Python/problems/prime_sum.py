from math import *
#The function to check if prime or not
def isPrime(n):
    if n%2==0 or n%3==0:
        return 0
    else:
        for i in range(5,int(sqrt(n)+1)):
            if n%i==0:
                return 0
        return 1

s=2
for i in range(3,1000001,2):
    if isPrime(i):
        s+=i
print s
