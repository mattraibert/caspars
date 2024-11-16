def n33
  cancellers = []
  (1..9).map do |cancel|
    (1..9).map do |n|
      (1..9).map do |d|
        numerator = n * 10 + cancel
        denominator = cancel * 10 + d
        if numerator != denominator && n.to_f / d == numerator.to_f / denominator
          cancellers << Rational(numerator, denominator)
        end
      end
    end
  end

  cancellers.inject(:*).denominator
end