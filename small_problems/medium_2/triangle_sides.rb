def triangle(side1, side2, side3)
  sides_array = [side1, side2, side3]
  biggest_side = sides_array.max
  return :invalid if sides_array.min(2).sum < biggest_side || sides_array.include?(0)
  return :equilateral if sides_array.all?(side1)
  return :isosceles if sides_array.uniq.size == 2
  return :scalene if sides_array.uniq.size == 3
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid