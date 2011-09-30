require '4_util'

puts pairs(999,100).map { |pair| pair[0] * pair[1] }.select { |x| palindromic? x }.max