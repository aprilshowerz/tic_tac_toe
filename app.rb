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

post '/input' do 
	session[:player_one] = params[:player_one] 
	session[:player_two] = params[:player_two] 
 	erb :player_one_marker,:locals => {:player_one => session[:player_one], :player_two => session[:player_two]} 
end 