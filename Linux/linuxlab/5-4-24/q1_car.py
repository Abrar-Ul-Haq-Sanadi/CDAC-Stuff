class Car:
	def __init__ (self, make, model, year):
		self.make = make
		self.model = model
		self.year = year

	def print_func(self):
		print("Make: ",self.make)
		print("Model: ",self.model)
		print("Year: ",self.year)

c1 = Car("Mercedes Benz", "EQS-EV", 2024)

c1.print_func()



