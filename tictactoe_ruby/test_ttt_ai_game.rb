require 'minitest/autorun'
require_relative "ttt_ai_game.rb"

class TicTacToeGame <Minitest::Test

	def test_that_the_game_is_over
		player_1 = {:player_mode => SimpleAI.new, :marker => "X"}
		player_2 = {:player_mode => SequentialAI.new, :marker => "O"}
		board = create_new_board
		final_board = play_game(player_1, player_2, board)
		assert_equal(true, game_over?(final_board, "X") || game_over?(final_board, "O"))
	end

	def test_count
		player_1 = {:player_mode => SimpleAI.new, :marker => "X"}
		player_2 = {:player_mode => SequentialAI.new, :marker => "O"}
		board = create_new_board
		final_board = play_game(player_1, player_2, board)
		remaining_board = get_available_spaces(final_board)
		assert(true, remaining_board.count <=4)
	end
end