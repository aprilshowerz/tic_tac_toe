require_relative "board_logic.rb"

class SimpleAI

	def get_move(board)
		available_spaces = get_available_spaces(board)
		available_spaces.sample
	end

end