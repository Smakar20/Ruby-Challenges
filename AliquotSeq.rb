# Aliquot sequence of a given number till the given length.
def aliquot_sequence num, len
    new_arr = []
    while (new_arr.length < len)
        new_arr << num
        fact = 1
        sum = 0
        while fact < num
            if (num%fact==0)
                sum += fact
            end
            fact += 1
        end
        num = sum
    end
    new_arr
end

puts aliquot_sequence 10, 4