#### Aliquot Sequence ####
# A number's aliquot sum is the sum of all of its factors excluding itself.
#
# For example, the aliquot sum of 10 is: 1 + 2 + 5 = 8
#
# We can use the aliquot sum to define a special sequence, called the
# aliquot sequence. The aliquot sequence of a number begins with the
# number itself. The second number in the sequence is the first number's
# aliquot sum, the third number is the second number's aliquot sum, and
# so on.
#
# For example, the first 4 numbers in the aliquot sequence of 10 are: 10, 8, 7, 1
#
# Write a function that takes in two numbers, base and n, and returns the
# aliquot sequence of length n starting with base.
#
# Examples:
# aliquot_sequence(10, 4) # => [10, 8, 7, 1]
# aliquot_sequence(10, 2) # => [10, 8]
# aliquot_sequence(7, 4) # => [7, 1, 0, 0]

def aliquot_sum(num)
    i = 1
    sum = 0
    while i < num
        if (num % i == 0) 
            sum += i
        end
        i += 1 
    end
    sum 
end

puts aliquot_sum(10)
puts aliquot_sum(8)
puts aliquot_sum(7)


def aliquot_sequence(base, n)
    array = [base]
    i = base
    (n-1).times do 
         array << aliquot_sum(i)
         i = aliquot_sum(i)
    end
    array
end

p aliquot_sequence(10, 4) # => [10, 8, 7, 1]
p aliquot_sequence(10, 2) # => [10, 8]
p aliquot_sequence(7, 4) # => [7, 1, 0, 0]
