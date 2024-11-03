require './amicable_util'

def n21
  (0..10_000).select { |x| amicable? x }.sum
end
