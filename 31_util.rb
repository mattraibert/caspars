def make_change(value, coins)
  return [[value/coins.first]] if coins.size == 1

  (value/coins.first).downto(0).map do |n|
    make_change(value - n*coins.first, coins[1..-1]).map { |x| [n] + x }
  end.flatten(1)
end
