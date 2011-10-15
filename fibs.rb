class Fibs
  def calc n
    @fibs ||= [0,1]
    while @fibs.size < n+1
      @fibs << @fibs[-1] + @fibs[-2]
    end
    @fibs[n]
  end

  def fib n
    @fibs ||= [0,1]
    @fibs[n] || @fibs[n] = calc(n)
  end
end







