require_relative '../lib/rock_paper_scissors/version.rb'

class RockPaperScissors::CLI
  def call
    puts "Would you like to play a game of rock, paper, scissors?"

    while true
      input = gets.chomp.downcase

      if input == "yes" || input == "y"
        play_game
        break;
      elsif input == "no" || input == "n"
        puts "Thank you for visiting!"
        break;
      else
        puts "Invalid input. Please try again."
      end
    end
  end

  def play_game
    puts "Please choose your move: rock, paper, or scissors?"

    while true
      input = gets.chomp.downcase
      options = ["rock", "paper", "scissors"]
      
      if options.any? {|o| input.include?(o)}
        game = RockPaperScissors::Game.new(input)
        break;
      else
        puts "Invalid input. Please try again."
      end
    end

    puts game.winner_is
    play_again?
  end

  def play_again?
    puts "Would you like to play again?"

    while true
      input = gets.chomp.downcase

      if input == "yes" || input == "y"
        play_game
        break;
      elsif input == "no" || input == "n"
        puts "Thank you for playing."
        break;
      else
        puts "Invalid input. Please try again."
      end
    end
  end
end
