require '4_util'

puts pairs(100..999).map { |pair| pair[0] * pair[1] }.select { |x| palindromic? x }.max