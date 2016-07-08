#Matrix Multiplication
def matrix_mult(a, b)
  #TODO
  c = Array.new(a.length)
  a.length.times {|m| c[m]= Array.new(a.length)}

  a.length.times do |k|
	  a[0].length.times do |i|
	    sum = 0
	    b[0].length.times do |j|
	         sum += a[k][j] * b[j][i] 
	    end
	    puts sum 
	    c[k][i] = sum
	end
  end
  c
end

p matrix_mult([[1, 2], [3, 2]], [[3, 2], [1, 1]])

=begin
Calculating the above C values: 
C[0][0] = A[0][0] * B[0][0] + A[0][1] * B[1][0] = 1 * 3 + 2 * 1 = 5

C[0][1] = A[0][0] * B[0][1] + A[0][1] * B[1][1] = 1 * 2+ 2 * 1 = 4

C[1][0] = A[1][0] * B[0][0] + A[1][1] * B[1][0] = 3 * 3 + 2 * 1 = 11

C[1][1] = A[1][0] * B[0][1] + A[1][1] * B[1][1] = 3 * 2 + 2 * 1 = 8




#c = [[5, 4], [11, 8]]
=end
