#Using the Ruby language, have the function BitwiseOne(strArr) take the array of strings stored in strArr, 
#which will only contain two strings of equal length that represent binary numbers, and return a final binary 
#string that performed the bitwise OR operation on both strings. A bitwise OR operation places a 0 in the new 
#string where there are zeroes in both binary strings, otherwise it places a 1 in that spot. For example: 
#if strArr is ["1001", "0100"] then your program should return the string "1101" 

def BitwiseOne(strArr)

  # code goes here
  new_arr = []
  len = strArr[0].length

    for j in 0..len-1
        if strArr[0][j].to_i == 0 && strArr[1][j].to_i == 0
    	 new_arr << 0
        else
         new_arr << 1	
        end
    end
    
  strArr = new_arr.join("")
  return strArr 
end
   
# keep this function call here    
puts BitwiseOne(["00011", "01010"]) 