class Game
  def initialize(move)
    @move = move.downcase
  end

  def comp_move
    options = ['rock', 'paper', 'scissors'] # rule_engine.keys
    options.sample # OR options.shuffle[0]
  end

  def winner_is
    if rule_engine[comp_move.to_sym].include?(@move)
      puts 'Computer wins!'
    elsif rule_engine[@move.to_sym].include?(comp_move)
      puts 'You win!'
    else
      puts 'Tie'
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

start = Game.new('paper')
start.winner_is
