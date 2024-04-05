require_relative 'board'
require_relative 'game'
require_relative 'player'

puts "Let's get started. Player 1, you'll be X. Enter your name!"
player_one_name = gets.chomp
player_one = Player.new(player_one_name, 'X')

puts "Cool! Now, Player 2, you'll be O. Please, enter your name!"
player_two_name = gets.chomp
player_two = Player.new(player_two_name, 'O')

Game.new.play_game(player_one, player_two)
