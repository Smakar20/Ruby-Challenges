#Binary to decimal conversion.
def BinaryConverter(str)

  # code goes here
  str.reverse!
  sum = 0
  i = 0
  while (i < str.length)
    if str[i] == "0"
        sum += 0
    else
        sum  += 2 ** i
    end
    i += 1
  end
  return sum 
end
# keep this function call here    
puts BinaryConverter("100101")  #output should be 37


















  