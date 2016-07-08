# Finding uniq items in an array.
def unique_items arr
  uniq_arr = []
   for i in 0..arr.length-1
        j = 0
        count = 0
        if (!uniq_arr.include?(arr[i]))
	        while (j < arr.length)
		          if (arr[i] == arr[j])
		             count += 1
		          end
	          j += 1
	        end
	        if (count == 1)
	          uniq_arr << arr[i]
	          end
	     end   
   end
  uniq_arr.join(",")
end


puts unique_items [1, 5, 5, 7, 16, 8, 1, 8]