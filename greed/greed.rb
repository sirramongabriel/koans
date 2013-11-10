class Greed
  die = [1, 2, 3, 4, 5, 6]
  roll = [die.sample, die.sample, die.sample, die.sample, die.sample]

  case roll
  when roll.take_while { |num| num == 3 }
    return 1000
  when roll & [6, 6, 6]
    return 600
  when roll & [5, 5, 5]
    return 500
  when roll & [4, 4, 4]
    return 400
  when roll & [3, 3, 3]
    return 300
  when roll & [2, 2, 2]
    return 200
  when roll.include?(1)
    return 100
  else
    return 50
  end

  roll.keep_if { |n| n == 3} == 3
end
