require_relative 'tictactoe_ruby\board_logic.rb'

class Perfect

	def game_board()
	 board_array = %w[1 2 3 4 5 6 7 8 9]
	end

	#center position move
	def center(board, index)
		if board[4] = index + 1
			true
		else 
			false
		end
	end

	#corner position move
	def corner(board, index)
		if board[0] = index + 1 || board[2] = index + 1 || board[6] = index + 1 || board[8] = index + 1
			true
		else
			false
		end
	end

	#edge position move
	def edge(board, index)
		if board[1] = index + 1 || board[3] = index + 1 || board[5] = index + 1 || board[7] = index + 1
			true
		else
			false
		end
	end



end