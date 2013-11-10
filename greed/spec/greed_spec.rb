require 'spec_helper'

describe "Greed" do
  context "die parameters" do
    it "has 6 sides" do
      die = [1,2,3,4,5,6]
      expect(die.size).to eql 6
    end
  end
  context "turn" do
    it "rolls 5 dice per turn" do
      die = [1,2,3,4,5,6]
      turn = [die.sample, die.sample, die.sample, die.sample, die.sample]
      expect(turn).to have(5).items
    end

    it "adds 1000 points when roll result contains 3 1's" do
    end
  end
end
