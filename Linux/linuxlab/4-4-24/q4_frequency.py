list=[]
n = int(input("Enter a number: "))
for i in range (0,n):
        num = int(input())
        list.append(num)
print(list)

s=set(list)
print(s)
for i in s:
	print(i,"repeats " ,list.count(i))





