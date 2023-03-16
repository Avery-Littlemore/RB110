def running_total(arr)
  sum = 0
  arr.map { |value| sum += value }

  # current_index = 0
  # added_indices = 0
  # arr.map do |el|
  #   current_index.times do
  #     el += arr[added_indices]
  #     added_indices += 1
  #   end
  #   current_index += 1
  #   added_indices = 0
  #   el
  # end
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []