# frozen_string_literal: true

require_relative 'board'

# For the game that houses the board
class Game < Board
  attr_accessor :player_one, :player_two
end
