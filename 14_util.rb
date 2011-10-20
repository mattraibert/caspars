def fcn n
  return 1 if n == 1
  if n.even?
    n / 2
  else
    3*n + 1
  end
end

class ChainCache
  def initialize
    @cc = [nil, 1]
  end
  
  def lookup_length start
    @cc[start]
  end

  def record_length item, length
    @cc[item] = length
  end

  def is_cached? start
    !lookup_length(start).nil?
  end

  def first_known chain_prefix
    chain_prefix.find { |x| is_cached? x }
  end

  def unknown_portion chain_prefix
    index = chain_prefix.find_index { |x| is_cached? x } - 1
    chain_prefix[0..index]
  end

  def record_lengths unknown_prefix, known_item
    known_length = lookup_length(known_item)
    unknown_prefix.tails.each { |x| @cc[x[0]] = x.size + known_length }
  end
end

def chain n
  chain = [n]
  while(n > 1)
    n = fcn n
    chain << n
  end
  chain
end
