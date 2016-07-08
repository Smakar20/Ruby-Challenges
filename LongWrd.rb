def longest_word(sentence)
    arr=sentence.split()
    i=0
    str=''
    while(i<arr.length)
        if(str.length >= arr[i].length)
        break
        else
            str=arr[i]
        end    
        i+=1
    end
    puts  str
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #longest_word")
puts("===============================================")
    puts(
      'longest_word("short long hello") == "short": ' +
      (longest_word('short long hello') == 'short').to_s
    )
