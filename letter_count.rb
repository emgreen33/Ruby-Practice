# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
#
# Difficulty: 1/5

def letter_count(string)
	frequency = Hash.new(0)
	string.each_char do |i|
		frequency[i] += 1 unless i == " "
	end
	frequency
end

