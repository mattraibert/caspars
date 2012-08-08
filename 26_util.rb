def recurring_cycle(rat)
  n = rat.numerator
  d = rat.denominator
  q, r = n.divmod d
  remainders = []
  until remainders.include? r
    remainders << r
    q, r = (r * 10).divmod d
  end
  remainders << r
  remainders
  return [0] if remainders.last == 0
  remainders[remainders.index(remainders.last)..-1]
end

def cycle_length rat
  recurring_cycle(rat).size - 1
end