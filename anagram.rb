#Anagram check.
def anagram(arr)
	result = []
	arr.each {|word|
		anagram_arr = [word]
		letter_arr = word.split("").sort
		arr.length.times  {|i| anagram_arr << arr[i] if arr[i].split("").sort == letter_arr && anagram_arr.include?(arr[i])== false}
		arr.each {|ana| arr.delete(ana) if anagram_arr.include?(ana)}
		result << anagram_arr
	}
	result
end

arr =["abc","bca","acb","acd","dca","tvf","xyz","zyx","xzy"]
p anagram(arr)