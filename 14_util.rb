class ChainCache
  def initialize
    @cc = { 1 => 1 }
  end
  
  def lookup_length start
    @cc[start]
  end

  def record_lengths unknown_prefix, known_item
    known_length = lookup_length(known_item)
    size = unknown_prefix.size
    
    @cc[unknown_prefix.first] = size + known_length
#    unknown_prefix.each_with_index { |x,i| @cc[x] = (size - i) + known_length }
  end

  def fcn n
    return 1 if n == 1
    n,r = n.divmod 2
    if r == 0
      n
    else
      6*n + 4
    end
  end

  def inverse n
    retval = [n*2]
    m = n - 1
    m,r = m.divmod 3
    if r == 0
      retval << m
    end
    retval
  end

  def chain_length n
    chain = []
    x = n
    while(lookup_length(x).nil?)
      puts x
      chain << x
      x = fcn x
    end
    record_lengths chain, x
    lookup_length(n)
  end
end
