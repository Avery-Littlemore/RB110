# Given a list of integers and a single sum value, 
# return the first two values (parse from the left 
# please) in order of appearance that add up to 
# form the sum.

# If there are two or more pairs with the required 
# sum, the pair whose second element has the 
# smallest index is the solution.
=begin
P:
Array of integers and a sum value, 
Return first two values which add up to the sum

Input: array, sum
Output: array of two values

A:


=end

# def sum_pairs(array, sum)
#   first_index = nil
#   second_index = array.size
#   array.each_with_index do |num, idx1|
#     arr2 = array[idx1+1, array.size - idx1 - 1]
#     arr2.each_with_index do |_, idx2|
#       if num + arr2[idx2] == sum && idx1 + 1 + idx2 < second_index
#         first_index = idx1
#         second_index = idx1 + 1 + idx2
#       else
#         next
#       end
#     end
#   end
#   return nil if first_index == nil
#   [array[first_index], array[second_index]]
# end

def sum_pairs(array, sum)
  counter = 1
  result = []
  second_index = array.size
  arr2 = array.dup
  until counter == array.size
    current_element = arr2.shift
    arr2.each_with_index do |num, idx|
      if current_element + num == sum && counter + idx < second_index
        second_index = counter + idx
        result = [current_element, num]
      end
    end
    counter += 1
  end
  return nil if result.empty?
  result
end



l1= [1, 4, 8, 7, 3, 15]
l2= [1, -2, 3, 0, -6, 1]
l3= [20, -13, 40]
l4= [1, 2, 3, 4, 1, 0]
l5= [10, 5, 2, 3, 7, 5]
l6= [4, -2, 3, 3, 4]
l7= [0, 2, 0]
l8= [5, 9, 13, -3]


p sum_pairs(l1, 8) == [1, 7]
p sum_pairs(l2, -6) == [0, -6]
p sum_pairs(l3, -7) == nil
p sum_pairs(l4, 2) == [1, 1]
p sum_pairs(l5, 10) == [3, 7]
p sum_pairs(l6, 8) == [4, 4]
p sum_pairs(l7, 0) == [0, 0]
p sum_pairs(l8, 10) == [13, -3]