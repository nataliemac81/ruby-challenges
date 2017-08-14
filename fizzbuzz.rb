def fizzbuzz
	for num in (1..100)
		if (num % 3 == 0)
			puts "Fizz"
		elsif (num % 5 == 0)
			puts "Buzz"
		elsif (num % 3 == 0) && (num % 5 == 0)
			puts "FizzBuzz"
		else
			puts num
		end
	end
end

fizzbuzz


def fizz_buzz
	i = 0
	while i < 101
		if i % 3 == 0 && i % 5 == 0
			puts "FizzBuzz"
		elsif i % 3 == 0
			puts "Fizz"
		elsif i % 5 == 0
			puts "Buzz"
		else
			puts i
		end
		i+=1
	end
end


fizz_buzz









