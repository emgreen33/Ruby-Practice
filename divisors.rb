# Given an integer n return 'odd' if the number of its divisors is odd. 
#Otherwise return 'even'.

# Examples:

# All prime numbers have exactly two divisors (hence 'even')

# For n=12 the divisors are [1,2,3,4,6,12] – 'even'

# For n=4 the divisors are [1,2,4] – 'odd'

def divisors(num)
	num_divisors = 0
	i = 1
	while i <= num 
		if num % i == 0
			num_divisors += 1
		end
		i += 1
	end
	if num_divisors % 2 == 0
		return "even"
	else
		return "odd"
	end
end

puts divisors(4)
puts divisors(12)


def oddity(num)
	num_divisors = 0
	#i = 1
	max = Math.sqrt(num) 
	max.times do |i|
		if num % i == 0
      		if i == max
        		num_divisors += 1
      		else
        		num_divisors += 2
		  	end
    	end  
		#i += 1
	end
	if num_divisors % 2 == 0
		return "even"
	else
		return "odd"
	end
end