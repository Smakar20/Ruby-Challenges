#Finding uniq and duplicate elements from a given array. 
def duplicates(arr)
	hash = Hash.new()
	dup_arr = []
	arr.each {|element|
		if(hash[element] == nil)
			hash[element] = true
		elsif !dup_arr.include?(element)
			dup_arr << element
		end
	}
	p hash.keys - dup_arr #[-4, 103, 4] --> excluding duplicate values
	p dup_arr.sort #[1, 21] --> include only duplicate elements
end


duplicates([1, 21, -4, 103, 21, 4, 1, 1]);