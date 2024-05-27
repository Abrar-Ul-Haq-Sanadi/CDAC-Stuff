a= [1,2,2,6]
b= [2,4,6,7]

s1 = set(a)
s2 = set(b)

print(s1,s2)
for i in s2:
	s1.add(i)
print(s1)

lists = list(s1)
print(lists)

