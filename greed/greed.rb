class Greed
  die = [1, 2, 3, 4, 5, 6]
  roll = [die.sample, die.sample, die.sample, die.sample, die.sample]

  case score
  when roll.count { |num| num == 1 }.eql? 3
    return 1000
  when roll.count { |num| num == 6 }.eql? 3
    return 600
  when roll.count { |num| num == 5 }.eql? 3
    return 500
  when roll.count { |num| num == 4 }.eql? 3
    return 400
  when roll.count { |num| num == 3 }.eql? 3
    return 300
  when roll.count { |num| num == 2 }.eql? 3
    return 200
  when roll.include?(1)
    return 100
  else
    return 50
  end
end
