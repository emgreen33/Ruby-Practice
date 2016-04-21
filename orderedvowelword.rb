# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
#
# Difficulty: 2/5

def ordered_vowel_word?(word)
	vowels = ["a", "e", "i", "o", "u"]
	letter_array = word.split("")
	vowel_array = letter_array.select{|l| vowels.include?(l)}
	(0...(vowel_array.length-1)).all? do |i|
		vowel_array[i] <= vowel_array[i+1]
	end
end

def ordered_vowel_words(string)
	words = string.split(" ")
	ordered_vowel_words = words.select do |word|
		ordered_vowel_word?(word)
	end
	ordered_vowel_words.join(" ")
end


