class RockPaperScissors::Game
  def initialize(move)
    @move = move
    @c_move = comp_move
  end

  def comp_move
    options = ['rock', 'paper', 'scissors']
    options.sample
  end

  def winner_is
    puts "The computer played #{@c_move}."

    if rule_engine[@c_move.to_sym].include?(@move)
      puts 'Computer wins!'
    elsif rule_engine[@move.to_sym].include?(@c_move)
      puts 'You win!'
    else
      puts 'Tie game!'
    end
  end

  def rule_engine
    {
      'rock': ['scissors'],
      'paper': ['rock'],
      'scissors': ['paper']
    }
  end
end
