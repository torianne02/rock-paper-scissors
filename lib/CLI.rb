require_relative '../lib/rock_paper_scissors/version.rb'

class RockPaperScissors::CLI
  def call
    # class variables to keep count of wins
    @@c_count = 0
    @@p_count = 0

    puts "Would you like to play a game of rock, paper, scissors?"

    # checks for valid input from user
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

    # checks for valid input from user
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

    # checks who won - adds 1 to their count
    if game.winner_is.include?("Computer wins!")
      @@c_count += 1
    elsif game.winner_is.include?("You win!")
      @@p_count += 1
    end

    puts game.winner_is
    puts "--- Computer : #{@@c_count} - You : #{@@p_count} ---"
    play_again?
  end

  def play_again?
    puts "Would you like to play again?"

    # checks for valid input from user
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
