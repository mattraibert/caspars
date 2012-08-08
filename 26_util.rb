def recurring_cycle(denominator)
  q, r = 1.divmod denominator
  remainders = []
  until remainders.include? r
    remainders << r
    q, r = (r * 10).divmod denominator
  end
  return [] if r == 0
  remainders[remainders.index(r)..-1]
end

def cycle_length denominator
  recurring_cycle(denominator).size
end