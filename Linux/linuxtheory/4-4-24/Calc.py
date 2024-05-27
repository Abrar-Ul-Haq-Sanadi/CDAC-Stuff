

def add(*num):
	return num

def mul(*num):
        return num


sum = 0
n = add(*int(input("Enter numbers to add")))
for i in n:
	sum = sum + i
print (sum)
