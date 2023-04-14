# Given two arrays a and b write a function comp(a, b)
# (orcompSame(a, b)) that checks whether the two arrays
# have the "same" elements, with the same multiplicities
# (the multiplicity of a member is the number of times it
# appears). "Same" means, here, that the elements in b 
# are the elements in a squared, regardless of the order.

=begin
P: 
Compare two input arrays. Return true if they have the same elements and the same frequency of elements.

Input: arrays
Output: boolean


=end


def comp(array1, array2)
  array1.each do |num|
    return false if !array2.include?(num*num)
    return false if array1.count(num) != array2.count(num*num)
  end
  true
end


p comp([121, 144, 19, 161, 19, 144, 19, 11], [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19])

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
p comp(a, b)