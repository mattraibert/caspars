def alphapos(letter)
  letter.downcase.getbyte(0) - 96
end

def pos_sum(word)
  word.chars.map {|c| alphapos(c)}.sum
end

def triangle?(i)
  sqrt = Math.sqrt(8 * i + 1)
  sqrt == sqrt.to_i
end
