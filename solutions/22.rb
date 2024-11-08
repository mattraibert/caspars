
def value(char)
  ('A'..'Z').to_a.find_index(char) + 1
end

def value_str(str)
  str.each_char.map { |x| value(x) }.sum
end

def n22
  names = IO.read("./names.txt").gsub(/"/, '').split(/,/).sort
  names.map { |name| value_str name }.each_with_index.map { |name, i| name * (i + 1) }.sum
end