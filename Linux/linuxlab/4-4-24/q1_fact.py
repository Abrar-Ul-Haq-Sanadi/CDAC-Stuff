
def fact_func():
	n = int(input("Enter a number: "))
	fact = 1
	for i in range(1,n+1):
		fact = fact*i
	return fact

result = fact_func()
print(result)
