# Replacing array element with sum of its neighbors and returning a new array.
def neighborSum arr
 i = 0
 arr_sum = []
 while (i < arr.length)
      #current = arr[i]
      left = i - 1
      right = i + 1
          if left >= 0 && right < arr.length
           	 sum = arr[left] + arr[right]
          elsif left < 0
          		sum = arr[right]
          elsif right > arr.length-1 
          	sum = arr[left]
          end
          arr_sum.push(sum)
      i += 1
 end
   arr_sum.join(",")
end

puts neighborSum [7, 4, 2, 9, 3, 5]  #[4,9,13,5,14,3] 