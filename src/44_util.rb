require 'five_leaves/lazy_enum'
require 'five_leaves/range_util'

def pentagonal(n)
  @pentagonals ||= Hash.new do |h, key|
    h[key] = ((3 * key * key) - key) / 2
  end
  @pentagonals[n]
end

def pentagonal_size
  @pentagonals.size
end

def pentagonals(max = (1.0 / 0.0))
  (1..max).lazy_map { |n| pentagonal(n) }
end

def pentagonal_pairs
  (500..1000).pairs.map do |i, j|
    pi = pentagonal(i)
    pj = pentagonal(j)
    # i + 2j
    [pi, pj, pi + pj, pi + 2 * pj]
  end.select do |pi, pj, pk, pl|
    pentagonal?(pk) && pentagonal?(pl)
  end
end

def pentagonal?(p)
  pentagonals(Math.sqrt(p)).any?(p)
end

