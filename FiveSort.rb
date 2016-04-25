
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


def aliquot_sequence(base, n)
    array = [base]
    i = base
    (n-1).times do 
         array << aliquot_sum(i)
         i = aliquot_sum(i)
    end
    array
end



def no_repeat?(year)
    nums_seen = []
    year.to_s.each_char do |num|
        return false if nums_seen.include?(num)
        nums_seen << num 
    end
    return true
end

def no_repeats(year_start, year_end)
    no_repeat_yrs = []
    (year_start..year_end).each do |year|
        no_repeat_yrs << year if no_repeat?(year)
    end
    no_repeat_yrs
end

def bubble_sort(array)
  finished = false
  until finished
    finished = true
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        finished = false
      end
    end
  end

  array
end



