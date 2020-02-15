class RPS

  def initialize
    @score = 0
    @bad_score = 0
  end

  def score
    @score
  end

  def bad_score
    @bad_score
  end

  def wins?(object, argument)
    if (object == 'rock') & (argument == 'scissors')
      true
    elsif (object == 'paper') & (argument == 'rock')
      true
    elsif (object == 'scissors') & (argument == 'paper')
      true
    else
      false
    end
  end

  def draws?(object, argument)
    object == argument
  end

  def shoot(object, argument)
    if self.wins?(object, argument)
      @score += 1
    elsif !self.draws?(object, argument)
      @bad_score += 1
    end
    [@score, @bad_score]
  end
  
end
  