n= int(input("Enter a Range: "))

for i in range (2,n):
		if(i%1==0):
			for j in range (2,int(n/2)):
				if(i%j!=0):
					continue
				else:
					print(i)
