def print_game_board(array)
    array
    puts """
      #{array[0]} | #{array[1]} | #{array[2]}  
     -----------
      #{array[3]} | #{array[4]} | #{array[5]} 
     -----------
      #{array[6]} | #{array[7]} | #{array[8]} """
end

def ask_to_play_game
    puts "Would you like to play a game of tic-tac-toe?"
    answer_to_play_game = gets.chomp.upcase
    if answer_to_play_game == "YES"
        
    else
        puts "The game has been ended."
        exit
    end
end
def player_one_marker()    
    puts "Player 1, would you like to be X or O?"
    player_one_answer_for_x_or_o = gets.chomp.upcase
    if player_one_answer_for_x_or_o == "X"
            puts "Player 1 has chosen X."
    elsif player_one_answer_for_x_or_o == "O"
            puts "Player 1 has chosen O."
    else 
        puts "Invalid character: The game has been ended."
        exit
    end
    player_one_answer_for_x_or_o
end
def player_two_marker(p1)
	if p1 == "X"
        "O"
    else
        "X"
    end
end


