require './24_util'

def n24
  permutation((0..9).to_a, 999_999).join
end