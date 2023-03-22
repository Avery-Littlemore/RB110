def sequence(num)
  arr = []
  # (1..num).to_a
  1.upto(num) do |index|
    arr << index
  end
  arr
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]