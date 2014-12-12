lst={" ":"%20","!":"%21","$":"%24","%":"%25","(":"%28",")":"%29","*":"%2a"}

a=raw_input()
while a!="#":
    ans=""
    for i in a:
        if i in lst:
            ans+=lst[i]
        else:
            ans+=i
    print ans
    a=raw_input()
