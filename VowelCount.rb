#Write a method that takes a string and returns the number of vowels in the string. 
#You may assume that all the letters are lower cased. You can treat "y" as a consonant.

def count_vowels str
	vowels = ["a","e","i","o","u"]
	str.downcase!
	vowels_count = 0
	
	for i in 0..str.length-1
		if (vowels.include?(str[i]))
			vowels_count += 1
		end
	end
	vowels_count
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #count_vowels")
puts("===============================================")
    puts('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
    puts('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
    puts('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
    puts('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)
puts("===============================================")
