def histogram values
  scale = values.map { |y| y[:value] }.max / 140.0
  values.map { |x| "#{x[:label]}: " + "#" * (x[:value]/scale) }.join("\n")
end
