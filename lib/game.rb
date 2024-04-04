# frozen_string_literal: true

require_relative 'board'

# For the game that houses the board
class Game < Board
  def next_turn(name, symbol)
    display_board
    puts "Alright, #{name}, it's your turn! Pick a spot on the board."
    move = gets.chomp while move.to_i.positive? == false
    @spots[move.to_i - 1] = symbol
    puts 'Turn complete!'
  end
end
