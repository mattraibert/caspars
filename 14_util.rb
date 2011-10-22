def fcn n
  return 1 if n == 1
  if n.even?
    n / 2
  else
    3*n + 1
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
