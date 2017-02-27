require 'minitest/autorun'
require_relative 'board.rb'

class TestTicTacToe < Minitest::Test

	def test_new_board
		board = Board.new
		assert_equal(Array.new(9, ''), board.ttt_board)
	end

	def test_update_first_position
		board = Board.new
		board.update_position(0, 'X')
		assert_equal(['X', '', '', '', '', '', '', '', ''], board.ttt_board)
	end

	def test_first_x_and_second_o
		board = Board.new
		board.update_position(0, 'X')
		board.update_position(1, 'O')
		assert_equal(['X', 'O', '', '', '', '', '', '', ''], board.ttt_board)
	end

	def test_update_partial_board_at_last_position
		board = Board.new
		board.ttt_board = (['X', 'O', '', 'O', '', '', '', '', ''])
		board.update_position(8, 'X')
		assert_equal(['X', 'O', '', 'O', '', '', '', '', 'X'], board.ttt_board)
	end

	def test_open_spot
		board = Board.new
		board.ttt_board = (['X', 'O', '', 'O', '', '', '', '', 'X'])
		assert_equal(true, board.open_spot?(6))
		assert_equal(false, board.open_spot?(0))
		assert_equal(false, board.open_spot?(15))
		assert_equal(true, board.open_spot?(8))
	end

	def test_for_full_board_false
		board = Board.new
		board.ttt_board = (['X', 'X', 'O', 'O', 'O', 'X', '', 'O', 'X'])
		assert_equal(false, board.full_board?)
	end

	def test_for_full_board_true
		board = Board.new
		board.ttt_board = (['X', 'X', 'O', 'O', 'O', 'X', 'X', 'O', 'X'])
		assert_equal(true, board.full_board?)
	end
	def test_valid_input
		board = Board.new
		assert_equal(false, board.valid_input?('m'))
		assert_equal(true, board.valid_input?('x'))
		assert_equal(true, board.valid_input?('X'))
		assert_equal(true, board.valid_input?('o'))
		assert_equal(true, board.valid_input?('O'))
		assert_equal(false, board.valid_input?('4'))
		assert_equal(false, board.valid_input?(' '))
	end

	def test_winner_x_at_position_0_1_2_with_x
		board = Board.new
		marker = 'X'
		board.ttt_board = ['X', 'X', 'X', 'O', '', 'O', '', 'O', '']
		assert_equal(true, board.winner?(marker))

	end
end