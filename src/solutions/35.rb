require './35_util'
require 'prime'
def n35
  allowable_digits = [nil, 1, 3, 7, 9]

  circular = allowable_digits.map do |a|
    allowable_digits.map do |b|
      allowable_digits.map do |c|
        allowable_digits.map do |d|
          allowable_digits.map do |e|
            allowable_digits.map do |f|
              rotations = [a, b, c, d, e, f].reject(&:nil?).rotations.map { |rot| rot.undigits }
            end
          end
        end
      end
    end
  end.flatten(5).select do |rotations|
    rotations.all? { |n| n.prime? }
  end.flatten.uniq.count
  circular + 2 # 2 and 5 are also circular primes
end
