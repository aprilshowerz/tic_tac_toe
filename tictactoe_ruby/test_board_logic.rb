require 'minitest/autorun'
require_relative "board_logic.rb"

class TicTacToe < Minitest::Test

	def test_that_game_board_exist
		assert_equal([1, 2, 3, 4, 5, 6, 7, 8, 9], create_new_board)
	end

	
end