class Pet
	def set_name=(name)
		@name = name
	end

	def get_name
		return @name
	end

	def set_owner=(owner_name)
		@owner_name = owner_name
	end

	def get_owner
		return @owner_name
	end
end

class Cat < Pet
	def meow
		return "Meowwwww!"
	end

	def purr
		return "purrrrrr"
	end
end

my_cat = Cat.new
my_cat.set_name = "Grace"
catname = my_cat.get_name

my_cat.set_owner = "Natalie"
ownername = my_cat.get_owner


puts "I'm #{catname}! My owner #{ownername} is my best friend. 
When she feeds me I say #{my_cat.meow}. 
When she pets me I say #{my_cat.purr}."


puts my_cat.inspect
