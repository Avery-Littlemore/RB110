def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  # if sides.reduce(:+) != 180 || sides.include?(0)
  if sides.sum != 180 || sides.include?(0)
    :invalid 
  elsif sides.include?(90)
    :right
  elsif sides.max < 90
    :acute
  else 
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid