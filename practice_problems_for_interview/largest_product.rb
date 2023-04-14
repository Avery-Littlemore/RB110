# Complete the greatestProduct method so that it'll 
# find the greatest product of five consecutive digits in the given string of digits.

# greatestProduct("123834539327238239583") // should return 3240
# The input string always has more than five digits.

=begin
P: 
Divide string into sequences of 5
Calculate product of each 5-digit string
Return the product of the highest 5-digit string

Input: str
output: num

A: 
- create max_prod = 0
- Divide string into individual sequences of-digit strings
- break num_str into array of chars
- iterate each with index
  - take num_str from current index to 5 afterwards and insert as a subarr into arr_of_nums
  - break when index + 5 is too large
- go through arr of nums each
  - calculate product of subarr. If greater than current max_prod, reassign




=end

def greatest_product(num_str)
  arr_of_nums = []
  max_prod = 0
  num_str.chars.each_with_index do |char, idx|
    arr_of_nums << num_str[idx...idx + 5]
    break if idx == num_str.size - 5
  end
  arr_of_nums.each do |substr|
    product = 1
    5.times do |n|
      product *= substr[n].to_i
    end
    max_prod = product if product > max_prod
  end
  max_prod
end


p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0