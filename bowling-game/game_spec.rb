require_relative "./game.rb"
require 'rspec'

module Bowling
  describe Game do
    it "returns 0 for a gutter ball" do
      game = Game.new
      game.miss

      expect(game.score).to eq(0)
    end

    it "returns 10 for a strike" do
      game = Game.new
      game.strike

      expect(game.score).to eq(10)
    end

  end
end
