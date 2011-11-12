class Node
  L, R = 'L', 'R'
  attr_reader :x, :value, :path

  def initialize x
    @x = x
    @path = []
    @value = x
  end

  def optify(children)
    l,r = children
    if(l.value > r.value)
      @value += l.value
      @path = l.path + [L]
    else
      @value += r.value
      @path = r.path + [R]
    end
    self
  end

  def self.wrap pp
    pp.map {|p| p.map { |x| Node.new x } }
  end
end

def enrich triangle
  triangle.each_cons(2) do |below, above|
    below.each_cons(2).zip(above).each {|pair, x| x.optify pair }
  end
  triangle
end
