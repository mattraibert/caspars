@fibs = [1,2]

until(@fibs[-1] >= 4000000)
  @fibs << @fibs[-1] + @fibs[-2]
end

@fibs = @fibs[0..-2]

puts @fibs.select {|x| x % 2 == 0}.inject(0) {|sum, x| sum += x}


@fibs = nil

class Fibs
  def calc n
    @fibs ||= [1,2]
    while @fibs.size < n+1
      @fibs << @fibs[-1] + @fibs[-2]
    end
    @fibs[n]
  end

  def fib n
    @fibs ||= [1,2]
    @fibs[n] || @fibs[n] = calc(n)
  end
end
