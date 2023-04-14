def transpose(outer_arr)
  result = []
  outer_arr.each do |sub_arr|
    sub_arr.each_with_index do |el, idx|
      if result[idx]
        result[idx] << el
      else
        result << [el]
      end
    end
  end
  result
end


p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]