#Using the Ruby language, have the function TripleDouble(num1,num2) take both parameters being passed, 
#and return 1 if there is a straight triple of a number at any place in num1 and also a straight double of 
#the same number in num2. For example: if num1 equals 451999277 and num2 equals 41177722899, then return 1 
#because in the first parameter you have the straight triple 999 and you have a straight double, 99, of the 
#same number in the second parameter. If this isn't the case, return 0. 

def TripleDouble(num1,num2)

  # code goes here
  str1 = num1.to_s
  str2 = num2.to_s
  for i in 0..str1.length-1
        if str1[i+2] && str1[i] == str1[i+1] && str1[i] == str1[i+2]
            result = str1[i]
            break
        end
  end
  
  for i in 0..str2.length-1
    if str2[i+1] && str2[i] == result && str2[i+1] == result
        return 1
    end
  end
  return 0 
         
end
   
# keep this function call here    
puts TripleDouble("451999277","41177722899")