# Given a List [] of n integers , find minimum number 
# to be inserted in a list, so that sum of all elements 
# of list should equal the closest prime number .

=begin
P:
Given an array of inteegers
find the min number to add such that the sum of all integers is a prime number

AKA, find the nearest prime number >= sum, then add the difference

Output: num

A: 



=end

def is_prime?(num)
  2.upto(num - 1) do |divisor|
    return false if num % divisor == 0
  end
  true
end

def minimum_number(arr)
  counter = arr.sum
  until is_prime?(counter)
    counter += 1
  end
  counter - arr.sum
end

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2