# Towers of Hanoi
#
# Write a Towers of Hanoi game:
# http://en.wikipedia.org/wiki/Towers_of_hanoi

class TowersOfHanoi
	attr_reader :towers

	def initialize
		@towers = [[3, 2, 1], [], []]
		@from_tower = 0
		@to_tower = 0
		@winning_tower = @towers[0]
	end

	def play
		until won?
			render
			move(@from_tower, @to_tower)
		end
	end

	def render
		puts "select a tower to select a disc from"
		@from_tower = gets.chomp.to_i - 1
		puts "select a tower to move the disc to"
		@to_tower = gets.chomp.to_i - 1
	end

	def move(from_tower, to_tower)
		if valid_move?(from_tower, to_tower)
			@towers[to_tower] << @towers[from_tower].pop
		else
			"It's not a valid move"
		end
	end

	def valid_move?(from_tower, to_tower)
		if !@towers[from_tower].empty? && (@towers[to_tower].empty? || @towers[from_tower].last < @towers[to_tower].last)
			return true
		end 
		return false
	end

	def won?
		@winning_tower == @towers[1] || @winning_tower == @towers[2]
	end
end