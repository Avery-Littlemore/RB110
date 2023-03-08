arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

# return [[], [3, 12], [9], [15]]

arr.map! do |sub_arr|
  sub_arr.select do |el|
    el % 3 == 0
  end
end

p arr