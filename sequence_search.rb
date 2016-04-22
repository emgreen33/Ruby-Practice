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

def sequence_search(sequence, key)
    seq = sequence.split("")
    key_array = key.split("")
    repeats = []
    nums = ["1", "2", "3"]
    seq.(length-1).times do |i|
        if seq[i] == key_array[0]
            repeats << seq[i]
            if seq[i+1] == key_array[1] || repeats.include?(seq[i]) || nums.include?(seq[i])
                repeats << seq[i]
                if seq[i+2] == key_array[2] || repeats.include?(seq[i]) || nums.include?(seq[i])
                    return true
                end
            end
        else
            return false 
        end
    end
end 