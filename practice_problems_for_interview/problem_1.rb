# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# P
# input: array of numbers
# Output: new array of results

# D

# A 
# Iterate through the array with index
  # With the current element, iterate through the array.uniq
    # Compare the current element with the nth element in the array to see if it is larger. If so, add one to the current index of results array

# Examples:

def smaller_numbers_than_current(arr)
  results = []
  arr.each_with_index do |num1, idx|
    results << 0
    arr.uniq.each do |num2|
      if num1 > num2
        results[idx] += 1
      end
    end
  end

  results
end


p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".