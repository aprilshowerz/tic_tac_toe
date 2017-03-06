require_relative 'console_game.rb'

player1 = Sequential_AI.new('X')
player2 = Random_AI.new('O')

game = Console_Game.new(player1, player2) 

game.intro_ttt

game.get_move

game.update_position

game.create_board

game.change_player

game.get_move

game.update_position

game.create_board

until game.check_winner || game.check_tie

	game.change_player
	game.get_move
	game.update_position
	game.create_board
end

game.check_winner

game.check_tie