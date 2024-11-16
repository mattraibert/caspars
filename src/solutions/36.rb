require 'five_leaves/palindromic'

def n36
  1_000_000.times.select do |n|
    (FiveLeaves.palindromic? n.to_s(2)) && (FiveLeaves.palindromic? n)
  end.sum
end