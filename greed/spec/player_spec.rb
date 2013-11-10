require 'spec_helper'

describe "Player" do
  context "When game starts" do
    it "has 2 players" do
      @player1 = Player.new
      @player2 = Player.new
      expect(Player.size)
    end
  end
end
