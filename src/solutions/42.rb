require './42_util'
require 'csv'
def n42
  CSV.parse(File.read("./0042_words.txt"))[0].select {|w| triangle?(pos_sum(w)) }.count
end

