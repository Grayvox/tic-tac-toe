# frozen_string_literal: true

require_relative 'board'
require_relative 'game'
require_relative 'player'

# Methods to play and replay the game
module StartGame
  def self.play
    puts "Let's get started. Player 1, you'll be X. Enter your name!"
    player_one_name = gets.chomp
    player_one = Player.new(player_one_name, 'X')
    puts "Cool! Now, Player 2, you'll be O. Please, enter your name!"
    player_two_name = gets.chomp
    player_two = Player.new(player_two_name, 'O')
    Game.new.play_game(player_one, player_two)
    replay
  end

  def self.replay
    puts 'Would you like to play again? Respond with Y or N.'
    answer = gets.chomp.downcase
    case answer
    when 'y'
      play
    when 'n'
      puts 'Thanks again for playing. Bye now!'
    end
  end
end

StartGame.play
