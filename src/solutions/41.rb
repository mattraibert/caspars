# 9 digits, probably starts with 9; ends with 1,3,7
require 'prime'

def pandigital?(n)
  unique_digits = (n.abs).digits.uniq.reject{ | d | d == 0 }
  puts(unique_digits.inspect)
  unique_digits.length == 9
end

def n41
  (-987654321..-912345687).select do |n|
    pandigital?(n)
  end.find do |p|
    p.abs.prime?
  end
end

puts ?* * 100
puts n41
puts ?* * 100
