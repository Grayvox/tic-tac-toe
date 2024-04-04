# frozen_string_literal: true

# For the game that houses the board
class Game < Board
  attr_accessor :player_one, :player_two

  def initialize(spots, board, one, two)
    super(spots, board)
    @player_one = one
    @player_two = two
  end
end
