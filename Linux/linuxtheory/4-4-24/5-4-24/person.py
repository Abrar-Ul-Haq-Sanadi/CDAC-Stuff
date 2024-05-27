class person:
	def __init__(self, name, height, weight):		#creating the parameterized construtor
		self.name = name
		self.height = height
		self.weight = weight

	def print_ht(self):
		print(self.name)
		print(self.height)

	def print_wt(self):
                print(self.name)
                print(self.weight)

p1 = person("Abrar", 171, 55)
p2 = person("abdul", 175, 60)

p1.print_ht()
p1.print_wt()

print("-----------------")

p2.print_ht()
p2.print_wt() 

