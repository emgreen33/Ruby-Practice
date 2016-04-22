#### Sequence Search ####
# You are given two strings, a sequence and a key. Write a function that
# determines if the characters of the key appear in order (although not
# necessarily contiguously) in the sequence.
#
# Example:
# sequence_search("arcata", "cat") # => true
# sequence_search("c1a2t3", "cat") # => true
# sequence_search("cta", "cat") # => false
# sequence_search("caat", "cat") # => true
#
# Constraint:
# * You may not use Regular Expressions (RegExp) in your solution.

def sequence_search(seq, key)
    seq_array = seq.split("")
    key_array = key.split("")
    key_i = 0
    seq_array.length.times do |j|
        if seq_array[j] == key_array[key_i] 
            key_i += 1
            if key_i == key_array.length 
                return true
            end

        end
    end
    return false
end
  

puts sequence_search("arcata", "cat") # => true
puts sequence_search("c1a2t3", "cat") # => true
puts sequence_search("cta", "cat") # => false
puts sequence_search("caat", "cat") # => true