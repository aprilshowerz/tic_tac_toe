# require 'minitest/autorun'
# require_relative 'unbeatable.rb'

# class TestUnbeatable < Minitest::Test
# 	def test_new_player_x
# 		player = Unbeatable.new('X')
# 		assert_equal('X', player.marker)
# 	end
# 	def test_win_at_2nd_pos_with_X
# 		player = Unbeatable.new('X')
# 		board_array = ['X', 'X', '', '', '', '', '', '', '']
# 		assert_equal(2, player.get_move(board_array))
# 	end
# 	def test_win_at_last_position_with_x
# 		player = Unbeatable.new('X')
# 		board_array = ['', '', '', '', '', '', '', 'X', 'X']
# 		assert_equal(6, player.get_move(board_array))
# 	end
# 	def test_win_at_7
# 		player = Unbeatable.new('O')
# 		board_array = ['', 'O', '', '', 'O', '', '', '', '']
# 		assert_equal(7, player.get_move(board_array))
# 	end
# 	def test_win_at_4
# 		player = Unbeatable.new('X')
# 		board_array = ['X', '', '', '', '', '', '', '', 'X']
# 		assert_equal(4, player.get_move(board_array))
# 	end
# 	def test_win_no_win
# 		player = Unbeatable.new('X')
# 		board_array = ['X', '', '', '', '', '', '', '', '']
# 		assert_equal(1, player.get_move(board_array))
# 	end
# 	def test_win_at_5
# 		player = Unbeatable.new('O')
# 		board_array = ['O', 'O', '', '', '', '', '', '', 'X']
# 		assert_equal(2, player.get_move(board_array))
# 	end
# 	def test_block_1
# 		player = Unbeatable.new('X')
# 		board_array = ['O', 'O', '', '', '', '', '', '', 'X']
# 		assert_equal(2, player.get_move(board_array))
# 	end
# 	def test_block_2
# 		player = Unbeatable.new('X')
# 		board_array = ['O', '', '', '', 'O', '', '', 'X', '']
# 		assert_equal(8, player.get_move(board_array))
# 	end
# 	def test_block_3
# 		player = Unbeatable.new('X')
# 		board_array = ['', '', 'O', '', '', 'O', '', 'X', '']
# 		assert_equal(8, player.get_move(board_array))
# 	end
# 	def test_fork1

		
# 	end
# 	def test_block_fork


# 	end
#end
require 'minitest/autorun'
require_relative 'unbeatable.rb'

class TestUnbeatable < MiniTest::Test 

	def test_new_player_x
		player = Unbeatable_AI.new('x')
		assert_equal('x', player.marker)
	end

	def test_win
		player = Unbeatable_AI.new('x') 
		ttt_board = ['x', 'x', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
		assert_equal(2, player.fill_move(ttt_board))
	end

	def test_win_at_last_pos
		player = Unbeatable_AI.new('x') 
		ttt_board = [' ', ' ', ' ', ' ', ' ', ' ', 'x', 'x', ' ']
		assert_equal(8, player.fill_move(ttt_board))
	end

	def test_win_at_4
		player = Unbeatable_AI.new('x') 
		ttt_board = ['x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'x']
		assert_equal(4, player.fill_move(ttt_board))
	end

	def test_no_win_x
		player = Unbeatable_AI.new('x') 
		ttt_board = ['x', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
		assert_equal(1, player.fill_move(ttt_board))
	end

	def test_win_at_5
		player = Unbeatable_AI.new('o') 
		ttt_board = [' ', ' ', ' ', 'o', 'o', ' ', ' ', ' ', ' ']
		assert_equal(5, player.fill_move(ttt_board))
	end

	def test_no_win_o
		player = Unbeatable_AI.new('o') 
		ttt_board = [' ', ' ', ' ', ' ', 'x', ' ', ' ', ' ', 'o']
		assert_equal(0, player.fill_move(ttt_board))
	end

	def test_block1
		player = Unbeatable_AI.new('x') 
		ttt_board = ['o', 'o', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
		assert_equal(2, player.fill_move(ttt_board))
	end

	def test_block2
		player = Unbeatable_AI.new('x') 
		ttt_board = ['o', '  ', ' ', ' ', 'o', ' ', ' ', 'x', ' ']
		assert_equal(8, player.fill_move(ttt_board))
	end

	def test_x_and_o_battle
		player = Unbeatable_AI.new('o') 
		ttt_board = ['o', 'o', ' ', ' ', ' ', 'x', ' ', ' ', 'x']
		assert_equal(2, player.fill_move(ttt_board))
	end

	def test_fork
		player = Unbeatable_AI.new('x')
		ttt_board = [' ', 'x', ' ', ' ', 'o', 'x', ' ', 'o', ' ']
		assert_equal(2, player.check_fork(ttt_board))
	end


end