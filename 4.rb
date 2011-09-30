def palindromic? n
  as_string = n.to_s
  midpoint = (as_string.size/2.0)
  as_string[0..midpoint.ceil-1] == as_string[midpoint.floor..-1].reverse
end

