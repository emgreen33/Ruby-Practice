def weirdcase(string)
  	string.split(' ').map do |word|
    	word.split('').each_with_index.map do |char, i|
    		if i % 2 == 0
    			char.upcase
    		else
    			char.downcase
    		end
    	end.join('')
	end.join(' ')
end

puts weirdcase("This is a test")

