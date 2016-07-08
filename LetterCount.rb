#Return the word with highest number of repeated letters. In case 2 words have same number result, 
#return the first word. Incase no repeated letters then return -1.

def LetterCountI(str)

  # code goes here
  arr = str.split(" ")
  temp_count = 0
  result = ""
  arr.each do |word|
      count = 0
      wrd_arr = []
      for i in 0..word.length-1
        j = i + 1
        while (j < word.length)
            if (word[i] == word[j] && !wrd_arr.include?(word[i]))
                count += 1
                wrd_arr << word[i]
            end
            j += 1
        end
        
      end
      if count > temp_count
          result = word
          temp_count = count
      end
  end
  if temp_count == 0
      return -1
  end
  return result 
end

   
# keep this function call here    
puts LetterCountI("Hello apple pie")