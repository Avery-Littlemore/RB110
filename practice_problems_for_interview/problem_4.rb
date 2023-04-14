# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

=begin
P:
Write a method that takes array of integers
Return the two integers that are closest together in value

Input: array of integers
Output: array of (2) integers
Rules:
  - integers must be nearest in value to one another, nearer than any other two integers

A:
- initialize empty result array
- iterate through array using each with index
  - starting from current element, compare the difference between current element and the next element in the array
    - difference can be compared using sort then .size to see how many digits are between the two
    - if result_arr.empty? or difference between numbers is less than current values 
      - replace current result_arr
    - repeat process for remaining elements in the array. Next when the last element is reached

=end

def closest_numbers(arr)
  result_arr = []
  arr.each_with_index do |num, idx|
    counter = 1
    until idx + counter == arr.size
      current_arr = [num, arr[idx + counter]]
      if result_arr.empty? || (current_arr.sort[0]...current_arr.sort[1]).size < (result_arr.sort[0]...result_arr.sort[1]).size
        result_arr = current_arr
      end
      counter += 1
    end
  end
  result_arr
end

# Examples:

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".