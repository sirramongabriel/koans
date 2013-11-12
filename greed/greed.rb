class Greed
  def initialize(player) 
    @player1 = Player.new(:name)
    @player2 = Player.new(:name)
  end

  die = [1, 2, 3, 4, 5, 6]
  roll = [die.sample, die.sample, die.sample, die.sample, die.sample]

  score = []

  def turn(roll, score)
    case roll
    when roll.count { |num| num == 1 }.eql? 3
      roll.delete_if { |num| num ==1 }
      score << 1000
    when roll.count { |num| num == 6 }.eql? 3
      roll.delete_if { |num| num == 6 }
      score << 600
    when roll.count { |num| num == 5 }.eql? 3
      score << 500
    when roll.count { |num| num == 4 }.eql? 3
      score << 400
    when roll.count { |num| num == 3 }.eql? 3
      score << 300
    when roll.count { |num| num == 2 }.eql? 3
      score << 200
    when roll.include?(1)
      score << 100
    else
      score << 50
    end

    puts "#{score}"
  end
end
