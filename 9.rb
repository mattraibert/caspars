def py_triplet? a,b,c
  (a < b && b < c) && (a**2 + b**2 == c**2)
end

(0..332).each do |x|
  (1..499).each do |y|
    z = 1000 - (x + y)
    puts x*y*z if py_triplet? x,y,z
  end
end


