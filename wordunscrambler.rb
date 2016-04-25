# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
#
# Hint: To see if a string `s1` is an anagram of `s2`, split both
# strings into arrays of letters. Sort the two arrays. If they are
# equal, then they are anagrams.
#
# Difficulty: 3/5

def word_unscrambler(word, dict)
	anagram = word.split("").sort
	anagrams = [] 
	words = dict.split(" ")
	words.each do |word|
		word_letters = word.split("").sort 
		anagrams << word_letters if word_letters == anagram 
	end
	anagrams
end