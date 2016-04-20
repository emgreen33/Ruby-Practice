#### Five Sort ####
# Write a function that accepts an array of numbers. It should return a copy of
# the array, with all instances of the number 5 moved to the end.
# The ordering of the other elements should remain unchanged.
#
# For example:
# nums = [1, 5, 8, 5, 5, 2, 3]
# sorted = five_sort(nums)
# sorted # => [1, 8, 2, 3, 5, 5, 5]

def five_sort(array)
    count = 0
    array.length.times do |i|
        if array[i] == 5
            count += 1
            array.delete(array[i])
        end
        count.times do
            array << 5
        end
    end
    array
end 


p five_sort([5,4,3,5])
p five_sort([5,5,5,4,3,2,5])