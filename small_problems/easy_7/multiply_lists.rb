def multiply_list(num_arr1, num_arr2)
  product_arr = []
  num_arr1.each_with_index do |num, idx|
    product_arr << num * num_arr2[idx]
  end
  product_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
