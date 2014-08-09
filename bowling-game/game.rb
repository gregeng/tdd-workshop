class Game
  attr_accessor :frame
  attr_reader :score


  def initialize
    @score = 0
    @score_card = []
  end

  def miss
    @score = 0
  end

  def strike
    @score += 10
  end

  def spare
    @score = 10
  end

  def roll(pins, args={})
    if args.empty?
      frame = 1
    else
      frame = args[:frame]
    end
    @score += pins
    update_score_card(pins, frame)
  end

  def score_for(frame)
    @score_card[frame]
  end

  private

  def update_score_card(pins, frame)
    @score_card[frame] ||= []
    @score_card[frame] << pins
  end



end
