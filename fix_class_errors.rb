class Ferret #class name must be capitalized
	def set_name=(ferret_name) #no spaces 
		@name = ferret_name
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

	def squeal
		return "squeeeee"
	end
end

class Chinchilla
	def set_name=(chinchilla_name)
		@name = chinchilla_name
	end
#added getter method for chinchilla name
	def get_name
		return @name
	end

	def set_owner=(owner_name)
		@owner_name = owner_name
	end

	def get_owner
		return @owner_name
	end

	def squeek
		return "eeeep"
	end
end

class Parrot
	def set_name=(parrot_name)
		#set parrot instance to equal parrot_name parameter
		@name = parrot_name
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

#added tweet method
	def tweet
		return "tweeeeeet"
	end
end

my_ferret = Ferret.new
my_ferret.set_name = "Fredo"
ferretname = my_ferret.get_name

my_parrot = Parrot.new
my_parrot.set_name = "Budgie"
parrotname = my_parrot.get_name

my_chinchilla = Chinchilla.new
my_chinchilla.set_name = "Dali"
chinchillaname = my_chinchilla.get_name

puts "#{ferretname} says #{my_ferret.squeal},
#{parrotname} says #{my_parrot.tweet},
and #{chinchillaname} says #{my_chinchilla.squeek}."

puts my_ferret.inspect
puts my_parrot.inspect
puts my_chinchilla.inspect






























