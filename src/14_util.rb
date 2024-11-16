def fcn n
  return 1 if n == 1
  if n.even?
    n / 2
  else
    3*n + 1
  end
end

def chain_length n
  @chain_lengths ||= {1 => 1}
  @chain_lengths[n] ||= 1 + chain_length(fcn n)
end