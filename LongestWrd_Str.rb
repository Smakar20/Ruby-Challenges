#Write a method that takes in a string. Return the longest word in the string. You may assume that the string contains only letters and spaces.
#You may use the String `split` method to aid you in your quest.

def longest_word(sentence)
    arr=sentence.split()
    i=0
    str=''
    while(i<arr.length)
        if(str.length<arr[i].length)
            str=arr[i]
        end    
        i+=1
    end
    return str
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #longest_word")
puts("===============================================")
    puts(
      'longest_word("short longest") == "longest": ' +
      (longest_word('short longest') == 'longest').to_s
    )
    puts(
      'longest_word("one") == "one": ' +
      (longest_word('one') == 'one').to_s
    )
    puts(
      'longest_word("abc def abcde") == "abcde": ' +
      (longest_word('abc def abcde') == 'abcde').to_s
    )
puts("===============================================")
