#Write a method that will take a string as input, and return a new
#String with the same letters in reverse order.
#Don't use String's reverse method; that would be too simple.

def reverse(string)
    i=string.length-1
    arr=[]
    while(i>=0)
        arr.push(string[i])
        i-=1
    end
    arr.join
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #reverse")
puts("===============================================")
    puts(
      'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
    )
    puts(
      'reverse("a") == "a": ' + (reverse("a") == "a").to_s
    )
    puts(
      'reverse("") == "": ' + (reverse("") == "").to_s
    )
puts("===============================================")
