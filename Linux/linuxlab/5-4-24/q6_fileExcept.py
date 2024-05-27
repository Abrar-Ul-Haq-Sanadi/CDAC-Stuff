

try:
	f = open("example.txt", "r")
	content = f.read()
	print(content)

except:
	print("File Does not exists")

finally:
	f.close()
