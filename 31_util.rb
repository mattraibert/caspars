def make_change(prefix = [], this_much, from)
  this_coin = from[0]
  max_coins = this_much/this_coin
  return [prefix + [max_coins]] if from.size == 1
  max_coins.downto(0).map do |num_coins|
    remaining_value = this_much - num_coins*this_coin
    make_change(prefix + [num_coins], remaining_value, from[1..-1])
  end.flatten(1)
end
