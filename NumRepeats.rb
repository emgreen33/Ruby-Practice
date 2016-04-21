# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
	letter_repeats = []
	letter_array = []
	letter_repeated_count = 0
	i = 0
	string.length.times do 
		if letter_array.include?(string[i]) && !repeated_array.include?(string[i])
			letter_array << string[i]
			repeated_array << string[i]
			letter_repeated_count += 1
		else
			letter_array << string[i]
		end
		i += 1
	end
	letter_repeated_count
end
