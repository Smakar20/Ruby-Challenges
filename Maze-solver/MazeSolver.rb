class MazeSolver
	attr_accessor :start
	def initialize(file_name)
		@maze_arr = []
		@path = []
    	@paths = []
		maze_arr_creator(file_name)
	end

	def maze_arr_creator(file_name)
	    File.open(file_name) do |file|
        	file.readlines.each {|line| @maze_arr << line.chomp.split("")}
    	end
	end

	def maze_size
		@maze_arr.length
	end

	def start_position
		maze_size.times do |row|
			@maze_arr[row].length.times do |i|
				if @maze_arr[row][i] == "S"
					@start = [row, i]
				end
			end
		end
	end

	def [](*pos)
		@maze_arr[pos[0]][pos[1]]
	end

	def solve(start)  
		x = start[0]
		y = start[1]
		sides = [top(x, y), left(x, y), bottom(x, y), right(x, y)]

		sides.each do |side|     
			if (self[*side] == "E")
				@paths << @path.dup
				return
			elsif side.nil? || self[*side].include?("*") || @path.include?(side)
				next
			else
				@path << side
				solve(side)
			end
		end
	    @path.pop
	end

	def top(x, y)
		if !(x - 1 < 0)
			[x - 1, y]
		end
	end

	def left(x, y)
		if !(y + 1 > @maze_arr[0].length - 1)
			[x, y + 1]
		end
	end

	def bottom(x, y)
		if !(x + 1 > maze_size - 1)
			[x + 1, y]
		end
	end

	def right(x, y)
		if !(y - 1 < 0)
			[x, y - 1]
		end
	end

	def shortest_path
		@paths.min.each do |pos|
			@maze_arr[pos[0]][pos[1]] = "X"
		end
		@paths.min
	end

	def maze_path
		File.open("solved_maze.txt", "w") do |file|
			@maze_arr.each do |row|
				file.puts row.join("")
			end
		end
	end
end

if __FILE__ == $PROGRAM_NAME  
  @content = MazeSolver.new(ARGV[0])
  @content.start_position
  @content.solve(@content.start)
  @content.shortest_path
  @content.maze_path
end