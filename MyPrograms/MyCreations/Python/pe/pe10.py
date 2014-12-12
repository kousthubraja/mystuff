import math

def isPrime(num):
    if type(num) != int: return False
    if num == 2: return True
    if num < 2 or num % 2 == 0: return False
    return not any(num % i == 0 for i in range(3, int(math.sqrt(num))+1, 2))

sum = 0
for i in range(2,2000000):
    if isPrime(i): sum += i

print(sum)