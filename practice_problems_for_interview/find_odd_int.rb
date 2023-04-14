# Given an array of integers, find the one that appears an odd number of times.

# There will always be only one integer that appears an odd number of times.

=begin
P: 
Given array of ints, find the integer that appears an odd number of times in the array

Input: 

=end

def find_it(arr)
  arr.each do |num|
    return num if arr.count(num) % 2 != 0
  end
end

p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
p find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) == -1
p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) ==5
p find_it([10]) == 10
p find_it([1,1,1,1,1,1,10,1,1,1,1]) == 10