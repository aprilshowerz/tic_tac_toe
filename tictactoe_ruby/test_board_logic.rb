require 'minitest/autorun'
require_relative "board_logic.rb"

class TicTacToe < Minitest::Test

	def test_that_game_board_exist
		assert_equal([1, 2, 3, 4, 5, 6, 7, 8, 9], create_new_board)
	end

	def test_that_marker_changes_to_X_or_O
		assert_equal([1, 2, 3, "X", 5, 6, 7, 8, 9], board_update([1, 2, 3, 4, 5, 6, 7, 8, 9], 3, "X"))
		assert_equal([1, "O", 3, 4, 5, 6, 7, 8, 9], board_update([1, 2, 3, 4, 5, 6, 7, 8, 9], 1, "O"))
	end

	
end