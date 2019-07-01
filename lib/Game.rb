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
    # check if @c_move as key in rule engine includes @move as value
    if rule_engine[@c_move.to_sym].include?(@move)
      return "The computer played #{@c_move}. Computer wins!"
    # check if @move as key in rule engine includes @c_move as value
    elsif rule_engine[@move.to_sym].include?(@c_move)
      return "The computer played #{@c_move}. You win!"
    else
      return "The computer played #{@c_move}. Tie game!"
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
