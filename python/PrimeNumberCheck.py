# Natural number > 1
# Which has only 2 factors 1 and itself
# Example
# 19 => 1 and 19 is divisible by itself - Prime number 
# 20 => 1 but divisible by 1,2,4,5,10 - Not a Prime number

import numbers
#num = float(input("Enter the number: "))
num = float(input("Enter the number => "))
count = 0

num = int(num)
if num>1:
    for i in range(1,num+1):
        if num%i == 0:
            count=count+1
    if count ==2:    
        print("The number is Prime")
    else:
        print("The number is Not Prime")
else:
    print("The number is not a Prime number as it is less than or equal to 1")   