\class car:
	def __init__(self,doors,seats,colour):
		self.doors = doors
		self.seats = seats
		self.colour = colour


	def print_func(self):
		print(self.doors)
		print(self.seats)
		print(self.colour)

c1 = car(4, 5, 'black')
c2 = car(5, 12,'silver')


c1.print_func()
c2.print_func()
