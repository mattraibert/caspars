def digits(rat, how_many)
  n = rat.numerator
  d = rat.denominator
  q, r = n.divmod d
  digits = []
  how_many.times do
    digits << [q,r]
    q, r = (r * 10).divmod d
  end
  digits
end

def cycle_length rat
  digits(rat, 100)
end