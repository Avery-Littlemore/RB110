# You are going to be given an array of integers. 
# Your job is to take that array and find an index
# N where the sum of the integers to the left of N 
# is equal to the sum of the integers to the right 
# of N. If there is no index that would make this 
# happen, return -1.

=begin
Taking arr of integers, find N where sum of ints to the left of N is equal to sum of ints right of N
If no true cases, return -1

Input: arr of ints
Output: num

A: 
iterate through array with index
summate all integers on left side of index and RHS of index
if they are equal, return index


=end

def find_even_index(arr)
  arr.each_with_index do |_, idx|
    return idx if arr[0, idx].sum == arr[idx + 1, arr.size - idx].sum
  end
  -1
end


p find_even_index([1,2,3,4,3,2,1])  == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) ==- 1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0,"Should pick the first index if more cases are valid"
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1