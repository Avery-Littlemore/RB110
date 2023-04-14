def merge(par1, par2)
  arr1 = par1.dup
  arr2 = par2.dup
  result = []
  loop do
    if arr1[0] == nil && arr2[0] == nil
      break
    elsif arr1[0] == nil
      result << arr2.shift
    elsif arr2[0] == nil 
      result << arr1.shift
    elsif arr1[0] < arr2[0]
      result << arr1.shift
    else
      result << arr2.shift
    end
  end
  result
end

# def merge(array1, array2)
#   index2 = 0
#   result = []

#   array1.each do |value|
#     while index2 < array2.size && array2[index2] <= value
#       result << array2[index2]
#       index2 += 1
#     end
#     result << value
#   end

#   result.concat(array2[index2..-1])
# end

p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) #== [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) #== [1, 4, 5]
p merge([1, 4, 5], []) #== [1, 4, 5]
