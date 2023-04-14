def my_method(array)
  if array.empty?
    []
  elsif array.size > 1 # if array.size > 1 is not included, array.map do etc. will be executed as the conditional, and when true, nil will be returned since the block following elsif + conditional will be empty
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([]) # []
p my_method([3]) # [21]
p my_method([3, 4]) # [9, 16]
p my_method([5, 6, 7]) # [25, 36, 49]
