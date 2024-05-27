words =  []
n =int(input("Enter number of words: "))

for item in range(0,n) :
	word = input()
	words.append(word)
print(words)

for item2 in words:
    if(len(item2)>5):
        print(item2)
        
