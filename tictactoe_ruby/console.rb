require_relative "ttt_ai_game.rb"

def print_game_board(array)
	puts "would you like to play tic tac toe?"
	
    array
    puts """
      #{array[0]} | #{array[1]} | #{array[2]}  
     -----------
      #{array[3]} | #{array[4]} | #{array[5]} 
     -----------
      #{array[6]} | #{array[7]} | #{array[8]} """
end

