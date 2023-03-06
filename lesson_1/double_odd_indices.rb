def double_odd_indices(num_array)
  counter = 0
  while counter < num_array.size
    num_array[counter] *= 2 if counter.odd?
    counter += 1
  end
  num_array
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_indices(my_numbers) # => [1, 8, 3, 14, 2, 12]