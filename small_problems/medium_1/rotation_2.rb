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

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917