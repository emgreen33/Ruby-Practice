#### Winning Streak ####
# You are a professional chess player. Your competitive record is stored as a
# string of 'W's and 'L's, signifying matches you've won and lost. Write a
# function that determines your longest winning streak from a given record.


def winning_streak(string)
    games = string.split("")
    count = 0
    longest_count = 0
    games.count.times do |i|
        if games[i] == "W"
            count += 1
            if count > longest_count
                longest_count = count
            end
        elsif games[i] == "L"
            count = 0
        end
    end
    longest_count
end

puts winning_streak("LW") # => 1
puts winning_streak("LL") # => 0
puts winning_streak("WWW") # => 3
puts winning_streak("WLLWWWLW") # => 3