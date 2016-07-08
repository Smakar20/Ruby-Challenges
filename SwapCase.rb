#Using the Ruby language, have the function SwapII(str) take the str parameter and swap the case of each character. 
#Then, if a letter is between two numbers (without separation), switch the places of the two numbers. 
#For example: if str is "6Hello4 -8World, 7 yes3" the output should be 4hELLO6 -8wORLD, 7 YES3. 

def SwapII(str)

  # code goes here
  str.swapcase!
  arr = str.split(" ")
  digits = [1,2,3,4,5,6,7,8,9]
  sel_digits = []
  new_arr =[]
  arr.each do |word|
	  	for i in 0..word.length-1
		     if (digits.include?(word[i].to_i))
		         sel_digits << word[i]
		     end
		end

	     if sel_digits.length == 2
	         x = word.index(sel_digits[0])
	         y = word.index(sel_digits[1])
	         
	         word[x.to_i], word[y.to_i] = word[y.to_i], word[x.to_i]
	     end
	     new_arr << word
  end
  str = new_arr.join(" ")
  return str 
         
end

# keep this function call here    
puts SwapII("Hel4lo2 World")