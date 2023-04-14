# Your goal is to write the group_and_count method, 
# which should receive and array as unique parameter 
# and return a hash. Empty or nil input must return 
# nil instead of a hash. This hash returned must 
# contain as keys the unique values of the array, 
# and as values the counting of each value.

=begin
P: 
Write method which takes input array and returns hash. 
If empty/nil, return nil
Hash to have unique values as keys, and counts of unique values as values

Intput: array
Output: hash
Rules: can't use count or length

A: 
- return nil if array.empty? or array.nil?
- initialize empty hash with default value 0
- iterate over array
  - use the num element as key and set the value of that key to be current value + 1
- return hash

=end

def group_and_count(arr)
  return nil if arr.nil? || arr.empty?

  hash = Hash.new(0)
  arr.each do |num|
    hash[num] += 1
  end
  hash
end

p group_and_count([0,1,1,0]) == {0=>2, 1=>2}