def double_numbers!(num_array)
  counter = 0
  while counter < num_array.size
    num_array[counter] *= 2
    counter += 1
  end
  num_array
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers!(my_numbers) # => [2, 8, 6, 14, 4, 12]
p my_numbers