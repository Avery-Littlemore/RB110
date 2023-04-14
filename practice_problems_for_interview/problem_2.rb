# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

=begin
P: 
Write method that takes array of integers. Method evaluates sum of 5 consecutive integers in the array.
Returns the lowest sum. If fewer than 5 integers exist in the array, return nil

Input: array
Output: integer or nil if array.size < 5

A:
- if array.size < 5, return nil
- create result_sum = array.sum (to be sure that it will be higher than any subsequent sum)
- iterate through the input array using each_with_index
  - summate 5 elements in the array starting from the current element
  - if less than current result_sum value, reassign result_sum
  - if current element index + 5 is outside of the array, then return the current result_sum
=end

def minimum_sum(arr)
  return nil if arr.size < 5
  
  result_sum = arr.map {|num| num.abs}.sum
  arr.each_with_index do |num, idx|
    return result_sum if idx + 5 > arr.size
    current_arr = arr[idx...idx + 5]
    current_arr.sum
    result_sum = current_arr.sum if current_arr.sum < result_sum
  end
end

# Examples:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10


# The tests above should print "true".