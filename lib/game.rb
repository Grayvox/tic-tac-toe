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

  # rubocop:disable Metrics/MethodLength
  def win_check(symbol)
    possibilities = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ]
    test = ['X', 'X', 'X', 4, 5, 6, 7, 8, 9]
    spots_won = 0
    possibilities.each_with_index do |_, parent_i|
      spots_won = 0
      possibilities[parent_i].each do |element|
        test[element] == symbol ? spots_won += 1 : nil
      end
      puts 'Game won!' if spots_won == 3
    end
  end
  # rubocop:enable Metrics/MethodLength
end

game = Game.new
game.win_check('X')
