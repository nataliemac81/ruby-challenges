# define Person class

class Person
	attr_accessor :name, :age 
	# attr_writer :name, :age
	# attr_reader :name, :age

	# def set_name=(name)
	# 	@name = name
	# end

	# def get_name
	# 	@name
	# end

	# def set_age=(age)
	# 	@age = age
	# end

	# def get_age
	# 	@age
	# end

	def greet
		puts "Hi, my name is #{@name}."
	end

	def greeting_with_age 
		puts "Hi, my name is #{@name} and I'm #{@age} years old."
	end
end

	new_person = Person.new

	new_person.name = "Natalie"

	my_new_person_name = new_person.name

	new_person.age = 34

	my_new_person_age = new_person.age

	puts new_person.greet

	puts new_person.greeting_with_age


