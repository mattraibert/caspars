require 'five_leaves/lazy_enum'
INFINITY = 1.0 / 0.0

def num_digits(t)
  Math.log(t, 10).floor + 1
end

def champernowne_length(t)
  return 0 if t == 0
  i = num_digits(t) # number of digits in the max length number
  fewer = 10 ** (i - 1) - 1 # numbers having fewer digits
  i_digit_nums = t - fewer # number of numbers with i digits
  champernowne_length(fewer) + ((i_digit_nums) * (i))
end

# the number of digits contributed by `d`-digit numbers
def t(d)
  number_count = 9 * 10 ** (d - 1)
  number_count * d
end

def champernowne_take(d)
  # n = Math.log(d, 10).floor - 1
  # t = 9 * (10 ** n) * (n + 1)
  # r = ((d - t) / 2.0).ceil
  # return r + t
  # remain = (r * 2) + t
  # 10^n-(10^(n+1)-1): 9 * 10^n * n+1
  # 1-9: 9 digits = 9 * 10^0 * 1
  # 10-99: 180 digits = 90 * 2 = 9 * 10^1 * 2
  # 100-999: 2700 digits = 900 * 3 = 9 * 10^2 * 3
  # 1000-9999: 36,000 digits = 9000 * 4 = 9 * 10^3 * 4
  if d < 10
    d
  elsif d < 100
    ((d - 9) / 2.0).ceil + 9
  elsif d < 1000
    ((d - 99) / 3.0).ceil + 99
  else
    ((d - 99) / 4.0).ceil + 999
  end
end

def champernowne(d)
  FiveLeaves.series(1) { |x| x.digits.reverse }.take(champernowne_take(d)).flatten
end

def champernowne_digit(d)
  champernowne(d)[d - 1]
end