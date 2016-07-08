#Write a method that takes in a string. Your method should return the most common letter in the array, 
#and a count of how many times it appears.

def most_common_letter(string)
	i = 0
	count2 = 0
	arr = []
	while(i < string.length)
		j = 0
		count1 = 0
		while(j < string.length)
			if(string[i] == string[j] && !arr.include?(string[j]))
				count1 += 1
			end
			j += 1
		end
		if(count1 > count2)
		    count2 = count1
		    arr << string[i]
		    most_num = [string[i],count2]
		end	
		i += 1
	end
	return most_num
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #most_common_letter")
puts("===============================================")
    puts(
      'most_common_letter("abca") == ["a", 2]: ' +
      (most_common_letter('abca') == ['a', 2]).to_s
    )
    puts(
      'most_common_letter("abbab") == ["b", 3]: ' +
      (most_common_letter('abbab') == ['b', 3]).to_s
    )
puts("===============================================")
