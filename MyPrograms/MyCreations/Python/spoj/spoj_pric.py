import sys
def seq(n):
	if n==1:
		return 1
	else:
		ai=(seq(n-1)+1234567890) % 2**31
		return ai
s=""

def cp(n):
    if n%2==0 or n==1:
        return 0
    else:
        for i in range(3,int(n**.5)+1,2):
            if n%i==0:
                return 0
    return 1

for i in range(1,950):
    s+=str(cp(seq(i)))
    if i%100==0:
        sys.stdout.write(s)
        s=""
