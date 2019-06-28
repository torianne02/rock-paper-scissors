require_relative '../lib/rock_paper_scissors/version.rb'

class RockPaperScissors::CLI
  def call
    puts "Would you like to play a game of rock, paper, scissors?"

    input = gets.chomp.downcase
    if input == "yes" || input == "y"
      play_game
    elsif input == "no" || input == "n"
      puts "Thank you for visiting!"
    else
      puts "Invalid input. Please try again."
    end
  end

  def play_game
    puts "Please choose your move: rock, paper, or scissors?"

    input = gets.chomp.downcase
    game = RockPaperScissors::Game.new(input)
    winner = game.winner_is

    puts winner
  end
end
