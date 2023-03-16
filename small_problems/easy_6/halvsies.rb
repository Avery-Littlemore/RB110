def halvsies(arr)
  first_half = arr.first((arr.size/2.0).ceil)
  # if arr.size.even?
  #   first_half = arr.first(arr.size/2) 
  # else
  #   first_half = arr.first(arr.size/2 + 1) 
  # end
  second_half = arr - first_half
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]