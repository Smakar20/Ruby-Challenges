#Using the Ruby language, have the function ArrayAdditionI(arr) take the array of numbers stored in arr and return the string true if any combination of numbers in the array can be added up to equal the largest number in the array, otherwise return the string false. For example: if arr contains [4, 6, 23, 10, 1, 3] the output should return true because 4 + 6 + 10 + 3 = 23. The array will not be empty, will not contain all the same elements, and may contain negative numbers. 
#Sample Test Cases
#Input:5,7,16,1,2
#Output:"false"

#Input:3,5,-1,8,12
#Output:"true"

def ArrayAdditionI(arr)

  # code goes here
  arr.sort!
  largest = arr.last
  sum = 0
  for i in 0..arr.length-2
      sum += arr[i]
      if sum >= largest
          return true
          break
      end
  end
  return false 
         
end
   
# keep this function call here    
puts ArrayAdditionI([3,5,-1,8,12])