nums =  []
n =int(input("Enter number of numbers in list: "))

for item in range(0,n) :
	num = input()
	nums.append(num)
print(nums)
print("after multiplying result is")

for item2 in nums:
    print(int(item2) *2)
