# To print all the Prime number between the 2 numbers in range

for num in range(10,40):
    if all(num%i!=0 for i in range(2,num)):
        print(num)