def multiply_all_pairs(num_arr1, num_arr2)
  all_num_array = []
  num_arr1.each do |arr1_num|
    num_arr2.each do |arr2_num|
      all_num_array << arr1_num * arr2_num
    end
  end
  all_num_array.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
