#Using the Ruby language, have the function OffLineMinimum(strArr) take the strArr parameter being passed which 
#will be an array of integers ranging from 1...n and the letter "E" and return the correct subset based on the 
#following rules. The input will be in the following format: ["I","I","E","I",...,"E",...,"I"] where the I's 
#stand for integers and the E means take out the smallest integer currently in the whole set. When finished, 
#your program should return that new set with integers separated by commas. For example: if strArr is 
#["5","4","6","E","1","7","E","E","3","2"] then your program should return 4,1,5. 

def OffLineMinimum(strArr)

  # code goes here
  new_arr = []

  until strArr.include?("E") == false
	  for i in 0..strArr.length-1
	    if strArr[i] == "E"
	        cur_arr = strArr[0..strArr.index("E")-1].sort
	        new_arr << cur_arr[0]
	        strArr.delete_at(strArr.index("E"))
	        strArr.delete_at(strArr.index(cur_arr[0]))
	    end
	  end
  end
  return new_arr.join(",") 
end
# keep this function call here    
puts OffLineMinimum(["5","4","6","E","1","7","E","E","3","2"])