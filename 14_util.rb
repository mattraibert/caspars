class ChainCache
  def initialize
    @cc = [nil, 1]
  end
  
  def lookup_length start
    @cc[start]
  end

  def is_cached? start
    !lookup_length(start).nil?
  end

  def record_lengths unknown_prefix, known_item
    known_length = lookup_length(known_item)
    unknown_prefix.tails.each { |x| @cc[x[0]] = x.size + known_length }
  end

  def fcn n
    return 1 if n == 1
    if n.even?
      n / 2
    else
      3*n + 1
    end
  end

  def chain_length n
    chain = []
    x = n
    while(!is_cached?(x))
      chain << x
      x = fcn x
    end
    record_lengths chain, x
    lookup_length(n)
  end
end
