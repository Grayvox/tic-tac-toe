require_relative 'board'

require 'pry'
require 'pry-byebug'

# For the game that houses the board
class Game < Board
  private

  attr_accessor :turns_completed

  public

  def play_game(player_one, player_two)
    turns_completed = 0
    start_message
    until turns_completed == 8
      next_turn(player_one.name, player_one.symbol)
      return stop_game(player_one) if win_check(player_one.symbol) == true

      next_turn(player_two.name, player_two.symbol)
      return stop_game(player_two) if win_check(player_two.symbol) == true

      turns_completed += 2
    end
  end

  private

  def start_message
    puts "
    ===================
    \s\s\sTIC\s\sTAC\s\sTOE\s\s\s
    \s\s\s\sBY\s\sGRAYVOX\s\s\s\s
    ===================
    "
  end

  def next_turn(name, symbol)
    display_board
    puts "Alright, #{name}, it's your turn! Pick a spot on the board."
    move = gets.chomp while move.to_i.positive? == false
    if @spots[move.to_i - 1].is_a? Integer
      @spots[move.to_i - 1] = symbol
    else
      puts "Nice try, #{name}, but a player has already claimed that spot. Try again!"
      next_turn(name, symbol)
    end
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
      [0, 4, 8], # Need to fix
      [2, 4, 6]
    ]
    spots_won = 0
    possibilities.each_with_index do |_, parent_i|
      possibilities[parent_i].each do |element|
        @spots[element] == symbol ? spots_won += 1 : spots_won = 0
      end
      return true if spots_won == 3
    end
  end
  # rubocop:enable Metrics/MethodLength

  def stop_game(winner)
    puts "#{winner.name} is the winner! Congratulations!"
  end
end
