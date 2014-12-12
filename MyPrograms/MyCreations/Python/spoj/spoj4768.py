a=input()
b=input()
cool=0
for i in range(a,b+1):
    sq=i**.5
    cb=i**0.33333333333333331
    if int(sq)==sq and int(cb)==cb:
        cool+=1
print cool
