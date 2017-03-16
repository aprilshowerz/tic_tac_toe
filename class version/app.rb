require 'sinatra'
# require_relative 'TODO -CHANGE FROM CONSOLE GAME'
require_relative 'board.rb'
require_relative 'unbeatable.rb'
require_relative 'player_classes.rb'

class TicTacToe < Sinatra::Base

	get '/' do

		erb :welcome

	end


end