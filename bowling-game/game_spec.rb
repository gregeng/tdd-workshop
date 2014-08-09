require_relative "./game.rb"
require_relative "./spec_helper.rb"
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

    it "returns 10 for a spare" do
      game.spare

      expect(game.score).to eq(10)
    end

    it "returns a total score of 10 plus the total of the next two throws after a strike is thrown" do
      game.strike
      game.roll(3)
      game.roll(5)

      expect(game.score).to eq(18)
    end

    it "returns a total score of 10 plus the total of the next single throw after a spare is thrown" do
      game.spare
      game.roll(6)

      expect(game.score).to eq(16)
    end

    it "returns a score of 300 for a perfect game" do
      repeat(30) { game.strike }

      expect(game.score).to eq(300)
    end

    it "should return a first frame score of 8 for a first throw of 6 and a second throw of 2" do
      game.frame = 1

      game.roll(6)
      game.roll(2)

      expect(game.score).to eq(8)
    end

    it "should return the score for an individual given frame" do
      game.roll(6)
      game.roll(2)

      expect(game.score_for(1)).to eq([6, 2])
    end

    it "returns the total score for the first two frames of the game" do
      game.roll(2)
      game.roll(6)

      game.roll(7, frame: 2)
      game.roll(1, frame: 2)

      expect(game.score).to eq(16)
    end

  end
end
