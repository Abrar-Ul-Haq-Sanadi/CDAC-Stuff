choice = input("Do you want to add additional lines in to the file(yes/no)?")
if(choice == 'yes'):

	n = int(input("Enter the no  sentnce you wish to enter"))
	f = open("output.txt", "a")

	for i in range(0,n):
        	text = input()
        	f.write(text)
        	f.write("\n")

	f.close()

else:
	print("Exit")
