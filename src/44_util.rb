require 'five_leaves/lazy_enum'

def pentagonal(n)
  @pentagonals ||= Hash.new do |h, key|
    h[key] = ((3 * key * key) - key) / 2
  end
  @pentagonals[n]
end

def pentagonal?(p)
  ubound = Math.sqrt(p)
  (1..ubound).lazy_map { |n| pentagonal(n) }.any?(p)
end

