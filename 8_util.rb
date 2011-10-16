class Chunkable
  include Enumerable

  def initialize contents, chunk_size
    @contents = contents
    @chunk_size = chunk_size
  end
  
  def each
    (0..(@contents.size - @chunk_size)).each { |i| yield @contents[i,@chunk_size] }
  end
end

class String
  def chunks n
    Chunkable.new(self, n)
  end
end
