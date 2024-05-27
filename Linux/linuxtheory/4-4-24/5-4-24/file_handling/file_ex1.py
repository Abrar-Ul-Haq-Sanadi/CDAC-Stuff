x= input("Enter your name: ")
y = int(input("Enter our height: "))

f1 = open("records.txt", "a")

f1.write("name: "+ str(x) + "\nhieght" + repr(y) + "\n")

f1.close()
