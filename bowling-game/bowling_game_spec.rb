require_relative "./bowling_game.rb"
require 'rspec'

describe BowlingGame do

  it 'scores gutters as a 0' do
    game = BowlingGame.new
    20.times { game roll(0) }

    expect(game.score).to eq(0)
  end

  it 'scores all 1s with 20' do
  end


end
