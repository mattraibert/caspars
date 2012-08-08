def recurring_cycle(rat)
  n = rat.numerator
  d = rat.denominator
  q, r = n.divmod d
  remainders = []
  until remainders.include? r
    remainders << r
    q, r = (r * 10).divmod d
  end
  return [] if r == 0
  remainders[remainders.index(r)..-1]
end

def cycle_length rat
  recurring_cycle(rat).size
end