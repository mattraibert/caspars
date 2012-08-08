def permute array
  return [array] if array.size == 1
  array.map do |element|
    permute(array - [element]).map {|sub| [element] + sub }
  end.flatten(1)
end