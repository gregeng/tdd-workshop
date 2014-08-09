class Game
  attr_reader :score

  def miss
    @score = 0
  end

  def strike
    @score = 10
  end

  def spare
    @score = 10
  end

  def roll(pins)
    @score += pins
  end


end
