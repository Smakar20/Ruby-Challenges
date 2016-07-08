#Using the Ruby language, have the function BracketMatcher(str) take the str parameter being passed and return 1 
#if the brackets are correctly matched and each one is accounted for. Otherwise return 0. For example: if str 
#is "(hello (world))", then the output should be 1, but if str is "((hello (world))" the the output should be 0 
#because the brackets do not correctly match up. Only "(" and ")" will be used as brackets. If str contains no 
#brackets return 1. 

def BracketMatcher(str)

  # code goes here
  arr = []
  count = 0
  for i in 0..str.length-1
    if str[i] == "("
        arr << str[i]
    elsif str[i] == ")"
    	if (arr.last == "(")
        	arr.pop()
        else
        	count = 1
        end
    end
  end
  if arr.length == 0 && count == 0
      return 1
  end
  return 0 
end
   
# keep this function call here    
puts BracketMatcher("(hello (world))")  