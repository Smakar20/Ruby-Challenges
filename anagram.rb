#Anagram array check.
def anagram(arr)
	result = []
	deleted_store = []
	arr.each {|word|
		next if deleted_store.include?(word)
		anagram_arr = []
		letter_arr = word.downcase.split("").sort
		arr.length.times  {|i| anagram_arr << arr[i] if arr[i].downcase.split("").sort == letter_arr #&& !anagram_arr.include?(arr[i]) #requried to exclude duplicates
		}
		anagram_arr.each {|ana| deleted_store << ana}
		result << anagram_arr
	}
	result
end

arr =["Abc","acb","bCa","acb","acd","dca","TVF","xyz","zyx","xzy","RsT"]
anagram(arr)