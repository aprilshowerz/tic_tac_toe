require 'sinatra'
require 'rubygems'
# require_relative 'board.rb'
# require_relative 'random.rb'
# require_relative 'sequel.rb'
# require_relative 'unbeatable.rb'
# require_relative 'human.rb'

get '/' do

#erb :player_input
erb :get_name
end

# post '/player' do 
# 	p1_name = params[:player_1]
# 	p2_name = params[:player_2]

# 	redirect '/board?p1_name=' + p1_name + '&p2_name=' + p2_name
# end

# get '/board' do
# 	p1_name = params[:p1_name]
# 	p2_name = params[:p2_name]
# 	erb  :board, :locals => {p1_name: p1_name, p2_name: p2_name}
# end