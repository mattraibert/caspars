require './28_util'

def n28
  (1..1001).select { |x| x.odd? }.map { |x| sum_corners x }.sum
end