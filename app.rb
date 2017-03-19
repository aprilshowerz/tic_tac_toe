require 'sinatra'
require_relative 'tictactoe_ruby/board_logic.rb'
require_relative 'tictactoe_ruby/ttt_ai_game.rb'
require_relative 'tictactoe_ruby/tictactoe_sai.rb'
require_relative 'tictactoe_ruby/tictactoe_seq_sai.rb'
require_relative 'tictactoe_ruby/human.rb'


enable :sessions

get '/' do 
	erb :choose_player
	
end

