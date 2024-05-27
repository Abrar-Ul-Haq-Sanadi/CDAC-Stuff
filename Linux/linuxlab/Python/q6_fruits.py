fruits =  []
n =int(input("Enter number of fruits: "))

for item in range(0,n) :
	fruit = input()
	fruits.append(fruit)
print(fruits)

d  = input("Enter fruit to delete:")
fruits.remove(d)
print(fruits)
