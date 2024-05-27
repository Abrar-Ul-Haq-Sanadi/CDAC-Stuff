print("Enter 3 sentnce you wish to enter")
f = open("output.txt", "w")
for i in range(0,3):
	text = input()
	f.write(text)
	f.write("\n")

f.close()
