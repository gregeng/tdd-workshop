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
    frame = initialize_frame(args)
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

  def initialize_frame(args)
    return 1 if args.empty?
    args.fetch(:frame)
  end
end
