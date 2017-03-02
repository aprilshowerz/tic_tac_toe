require_relative 'console_game.rb'

player1 = Sequential_AI.new('X')
player2 = Random_AI.new('O')

game = Console_Game.new(player1, player2) 

game.intro_ttt

game.create_board

game.get_move