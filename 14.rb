require 'lazy_enum'
require '14_util'

start = 0
max_chain_size = 0

(1..1000000).each do |x|
  chain_size = chain(x).size
  if chain_size > max_chain_size
    index = x 
    max_chain_size = chain_size
  end
end

puts start









