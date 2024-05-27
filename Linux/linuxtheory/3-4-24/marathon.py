while True :
	name = input("Enter your name: \n")
	weight = int(input("Enter your weight: \n"))
	Eligible_name = []

	if (weight > 75) :
		print("you are not eligible")
		continue

	else :
		Eligible_name.append(name)
		print("You are registered for marathon")
#		print("Please check your name in the list")

print("Player Eligible in marathon are")
for item in Eligible_name :
	print(item)



