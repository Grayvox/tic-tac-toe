# frozen_string_literal: true

require 'pry'
require 'pry-byebug'

# For the physical board itself
class Board
  def initialize
    @spots = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @board = "
    #{@spots[0]} | #{@spots[1]} | #{@spots[2]}
    ---------
    #{@spots[3]} | #{@spots[4]} | #{@spots[5]}
    ---------
    #{@spots[6]} | #{@spots[7]} | #{@spots[8]}
    "
  end
end

# For the game that houses the board
class Game < Board
  attr_accessor :player_one, :player_two

  def initialize(spots, board, one, two)
    super(spots, board)
    @player_one = one
    @player_two = two
  end
end
