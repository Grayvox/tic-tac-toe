# frozen_string_literal: true

# For the physical board itself
class Board
  attr_reader :spots, :board

  def initialize
    @spots = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display_board
    puts @board = "\u001b[37;46m\n
    #{@spots[0]} | #{@spots[1]} | #{@spots[2]}
    ---------
    #{@spots[3]} | #{@spots[4]} | #{@spots[5]}
    ---------
    #{@spots[6]} | #{@spots[7]} | #{@spots[8]}
    \u001b[0m"
  end
end
