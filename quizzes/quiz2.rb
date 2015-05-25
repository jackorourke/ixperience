## Jack O'Rourke; Quiz 2
## 5/25/15

# Q1
def my_name			#def - keyword to define a method; my_name - name of method
  "Zoo Lander"		#"Zoo Lander" will be the return value of the method
end					#end - keyword to indicate end of method definition

# Q2
# This code will print "8\n"

# Q3
def silly_check(number)
	if number < 5
		"The number is less than 5"
	else
		"The number is greater than or equal to 5"
	end
end

# Q4
def funify(array)
	array << "fun"
end

# Q5
def more_fun(array)
	array[0] = "FUN FUN"
end

# Q6
class Dog
	def initialize(name)
		@name = name
	end

	def bark
		"Ruff ruff"
	end
end

clifford = Dog.new("Clifford")
puts clifford.bark				

# Q7
# bob.speak will return an error because the speak method has not
# been defined anywhere for the Person class

# Q8
class Insect
  def initialize(age_in_days)
    @age_in_days = age_in_days
  end

  def age_in_year
  	@age_in_days / 365		# This will return an integer value of years
  end
end

# Q9
class Person
	attr_accessor :age

	def initialize(age)
		@age = age
	end
end

bob = Person.new(34)
puts bob.age 			# will print 34
bob.age = 95			# will change bob's age to 95
puts bob.age 			# will print 95

# Q10
# I used attr_accessor in Q9
