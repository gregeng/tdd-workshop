require_relative "./game.rb"
require 'rspec'

module Bowling
  describe Game do
    let(:game) { Game.new }

    it "returns 0 for a gutter ball" do
      game.miss

      expect(game.score).to eq(0)
    end

    it "returns 10 for a strike" do
      game.strike
      expect(game.score).to eq(10)
    end

    it "returns the number of pins hit for a spare" do
      pins = 3
      game.spare(pins)

      expect(game.score).to eq(pins)
    end

    it "returns a total score of 10 plus the total of the next two throws after a strike is thrown" do
      game.strike
      game.roll(8)
      game.roll(9)

      expect(game.score).to eq(27)
    end

  end
end
