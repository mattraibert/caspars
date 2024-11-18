require './40_util'

def n40
  7.times.map { |e| champernowne_digit(10 ** e) }.inject(&:*)
end