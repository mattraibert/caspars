require 'five_leaves/lazy_enum'

def n48
  (1..1000).map { |x| x ** x }.sum.to_s[-10..-1]
end