def multiply(num_array, multiplier)
  mux_array = num_array.map { |n| n * multiplier }
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]