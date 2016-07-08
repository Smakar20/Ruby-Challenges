#Write a program that asks a user to enter 5 numbers, one at a time. The program should then display the sum of all 
#of those numbers. Although the exercise specifies creating a program dealing with five numbers, please write the 
#code in such a way that if we asked you to change it do deal with 500 numbers, you can make some simple changes 
#and not have to add many more lines of code.

def numSum number
sum = 0
count = 0
while (count < number.to_i)
puts "enter num:"
num = gets.chomp
sum += num.to_i
count += 1
end
return sum
end

puts numSum 5