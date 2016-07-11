class RPNCalculator
  def initialize
  	@store = []
  end

  def push(val)
  	if !val.nil?
  		@store << val
  		self
  	end
  end

  def pop
  	if size > 0
  		@store.pop
  	else
  		raise_error
  	end
  end

  def size
  	@store.size
  end

  def value
  	if size > 0
  		@store[-1]
  	else
  		raise_error
  	end
  end

  def plus
  	if size >= 2
	  	sum = pop + pop
	  	push(sum)
 	 else
  		raise_error
  	end
  end

  def minus
  	if size >= 2
  		num1 = pop
	  	diff = pop - num1
	  	push(diff)
	 else
  		raise_error
  	end
  end

  def divide
  	if size >= 2
  		num1 = pop.to_f
  		result = pop.to_f / num1
  		push(result)
  	else
  		raise_error
  	end
  end

  def times
  	if size >= 2
  		prod = pop * pop
  		push(prod)
  	else
  		raise_error
  	end
  end

  def raise_error
  	raise "calculator is empty"
  end

  def tokens(str)
  	str = str.split(" ")
  	str.each do |i|
  		if (i.match(/[0-9]/))
  			push(i.to_i)
  		else
  			push(i.to_sym)
  		end
  	end
  	@store
  end

  def evaluate(str)
  	arr = str.split(" ")
  	result = 0
  	arr.each do |i|
  		if i == "+"
  			plus
  		elsif i == "-"
  			minus
  		elsif i == "*"
  			times
  		elsif i == "/"
  			divide
  		else
  			push(i.to_i)
  		end
  	end
  	value
  end

end

if __FILE__ == $PROGRAM_NAME  
  content = RPNCalculator.new
  if ARGV.empty?
    content.evaluate("")
  else
    file_name = ARGV[0]
    File.open(file_name) do |file|
      file.readlines.each {|line| puts content.evaluate(line)}
    end
  end
end