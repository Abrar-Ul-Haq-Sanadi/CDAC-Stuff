list=[]
n = int(input("Enter a number: "))
for i in range (0,n):
	num = int(input())
	list.append(num)

print(list)

largest = max(list)
print("Largest number is in list is",largest)
