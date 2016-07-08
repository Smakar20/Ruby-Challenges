#Using the Ruby language, have the function MultiplicativePersistence(num) take the num parameter being passed 
#which will always be a positive integer and return its multiplicative persistence which is the number of times 
#you must multiply the digits in num until you reach a single digit. For example: if num is 39 then your program 
#should return 3 because 3 * 9 = 27 then 2 * 7 = 14 and finally 1 * 4 = 4 and you stop at 4. 

def MultiplicativePersistence(num)

  # code goes here
  count = 0
  until num < 10
    str = num.to_s
    prod = 1
    for i in 0..str.length-1
        prod *= str[i].to_i
    end
    num = prod
    count += 1
  end
  return count 
         
end
   
# keep this function call here    
puts MultiplicativePersistence(39)  


















  