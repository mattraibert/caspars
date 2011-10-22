class ChainCache
  def initialize
    @cc = { 1 => 1 }
  end
  
  def lookup_length start
    @cc[start]
  end

  def record_lengths chain, known_item
    @cc[chain.first] = chain.size + lookup_length(known_item)
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
      chain << x
      x = fcn x
    end
    record_lengths(chain, x) 
    lookup_length(n)
  end
end
