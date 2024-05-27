class Student:
        def __init__ (self, name , age):
                self.name = name
                self.age = age

        def print_func(self):
                print("Name: ",self.name)
                print("Age: ",self.age)

s1 = Student("Borick", 25)

s1.print_func()

