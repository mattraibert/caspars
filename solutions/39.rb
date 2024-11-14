require 'five_leaves/maximize'
require './39_util'

def n39
  FiveLeaves.maximize(1..1000) { |p| right_triangles(p:p).length }
end