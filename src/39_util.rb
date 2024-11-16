def right_triangles(p:)
  (2..(p - 2)).map do |h|
    (1..((p - (h + 1)) / 2)).map do |s1|
      s2 = p - (h + s1)
      [h, s1, s2]
    end
  end.flatten(1).select do |h, s1, s2|
    h ** 2 == s1 ** 2 + s2 ** 2
  end
end
