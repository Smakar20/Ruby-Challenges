#Using the Ruby language, have the function AdditivePersistence(num) take the num parameter being passed which 
#will always be a positive integer and return its additive persistence which is the number of times you must add 
#the digits in num until you reach a single digit. For example: if num is 2718 then your program should return 2 
#because 2 + 7 + 1 + 8 = 18 and 1 + 8 = 9 and you stop at 9. 

def AdditivePersistence(num)

  # code goes here
  sum = 0
  count = 0
  until num < 10
  	num1 = num.to_s
  	sum = 0
    for i in 0..num1.length-1
        sum += num1[i].to_i
    end
    num = sum
    count += 1
  end
  return count
end
   
# keep this function call here    
puts AdditivePersistence(2718)