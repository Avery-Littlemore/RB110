def rotate_array(array)
  arr = array.dup
  holder = arr.shift
  arr.push(holder)
end

def rotate_rightmost_digits(num, n)
  arr = num.digits.reverse
  arr = arr[0...-n] + rotate_array(arr[-n..-1])
  arr.join.to_i
end

def max_rotation(num)
  counter = num.to_s.length
  result = num
  until counter == 0
    result = rotate_rightmost_digits(result, counter)
    counter -= 1
  end
  result
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845