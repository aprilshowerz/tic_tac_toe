class Board

	attr_accessor :ttt_board
	def initialize
		@ttt_board = Array.new(9, '')
	end

	def update_position(position, marker)
		ttt_board[position] = marker
	end

	def open_spot?(available)
		if ttt_board[available] == '' 
			true
		else
			false
		end
	end

	def full_board?
		if ttt_board.include('')
			false
		else
			true
		end
	end

	def valid_input?(input)
		if input.match(/[XxOo]/)
			true
		else
			false
		end
	end

	def game_tie?
		if ttt_board.include?('')
			false
		else
			true
		end
	end

	def winner?
		if ttt_board == ''

		else

		end
	end
end

