class Fixnum
	def in_words
		num_wrd = {
			1 => "one",
			2 => "two",
			3 => "three",
			4 => "four",
			5 => "five",
			6 => "six",
			7 => "seven",
			8 => "eight",
			9 => "nine",
			10 => "ten",
			11 => "eleven",
			12 => "twelve",
			13 => "thirteen",
			14 => "fourteen",
			15 => "fifteen",
			16 => "sixteen",
			17 => "seventeen",
			18 => "eighteen",
			19 => "nineteen",
			20 => "twenty",
			30 => "thirty",
			40 => "forty",
			50 => "fifty",
			60 => "sixty",
			70 => "seventy",
			80 => "eighty",
			90 => "ninety"
		}
		if self == 0
			return "zero"
		end
			
		num = self
		result = ""
		num_found = false
		while !num_found
			if num <= 20
				result += num_wrd[num]
				num_found = true		
			elsif num <= 99
				if num % 10 == 0
					result += num_wrd[num]
					num_found = true
				else
					result += num_wrd[((num/10).to_s + "0").to_i] + " "
					num %= 10
					num_found = false
				end				
			elsif num <= 999
				result += convert(num, 100)
				num_found = true				
			elsif num <= 999_999
				result += convert(num, 1000)
				num_found = true	
			elsif num <= 999_999_999
				result += convert(num, 1_000_000)
				num_found = true				
			elsif num <= 999_999_999_999
				result += convert(num, 1_000_000_000)
				num_found = true				
			elsif num <= 999_999_999_999_999
				result += convert(num, 1_000_000_000_000)
				num_found = true
			end
		end
		result 
	end
	
	def convert (number, limit)
		scale = {
			100 => "hundred",
			1000 => "thousand",
			1_000_000 => "million",
			1_000_000_000 => "billion",
			1_000_000_000_000 => "trillion"
		}
		result = ""
		result += (number/limit).in_words + " " + scale[limit]
			if number%limit != 0
				result += " " + (number%limit).in_words
			end
		result
	end
end