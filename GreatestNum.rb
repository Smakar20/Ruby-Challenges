#Write a method that takes a comma separated string of numbers; it should return the greatest number in the string.

def grt(str)
    arr=str.split(',')
    i=0
    num=0
    while(i<arr.length)
        if(num<arr[i].to_i)
            num=arr[i].to_i
        end
        i+=1
    end
    num
end    

puts grt('21,23,16')
