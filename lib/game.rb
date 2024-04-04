# frozen_string_literal: true

require_relative 'board'

# For the game that houses the board
class Game < Board
  def next_turn(name, symbol)
    display_board
    puts "Alright, #{name}, it's your turn! Pick a spot on the board."
    begin
      move = gets.chomp while move.to_i.positive? == false
    rescue Interrupt
      puts "\nInterruption detected! Quitting game..."
    end
    @spots[move.to_i - 1] = symbol
    puts 'Turn complete!'
  end
end

game = Game.new
game.next_turn('Dell', 'X')
game.next_turn('Cars', 'O')
game.next_turn('Dell', 'X')
game.next_turn('Cars', 'O')
game.next_turn('Dell', 'X')
game.next_turn('Cars', 'O')
