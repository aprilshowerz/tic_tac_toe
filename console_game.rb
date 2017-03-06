require_relative 'board.rb'
require_relative 'random.rb'

class Console_Game

		attr_accessor :board, :p1, :p2

	def initialize(p1, p2)
		@p1=p1
		@p2=p2
		@board=Board.new
	end

	def intro_ttt
		puts 'Welcome to Tic-Tac-Toe! Would you like to play?'
	end

	def display_board
	  puts " #{board.ttt_board[0]} | #{board.ttt_board[1]} | #{board.ttt_board[2]} "
	  puts "--------"
	  puts " #{board.ttt_board[3]} | #{board.ttt_board[4]} | #{board.ttt_board[5]} "
	  puts "--------"
	  puts " #{board.ttt_board[6]} | #{board.ttt_board[7]} | #{board.ttt_board[8]} "
	end

	def get_move(board_state)
		print active_player.get_move(board.ttt_board)
	end

	def update_position
		puts move = get_move
		puts marker = active_player.marker
		# puts board.update_position(move, marker)

	end

	def change_player
		if active_player == player2
			@active_player = player1
		else
			active_player = player2
		puts active_player
	end
	
end