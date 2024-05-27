f1 = open("file1.txt", "w")		# opening the file give path of the file("/path") then give mode to read r or write w

for line in f1:				# reading the file line by line
	print(line)

f1.close()


