class Board

	attr_accessor :ttt_board
	def initialize
		@ttt_board = Array.new(9, '')
	end

	def update_position(position, marker)
		ttt_board[position] = marker
	end

	def open_spot?(available)
		if ttt_board[position] == ''
			true
		else
			false
		end
	end


end

