def sum_of_sqaures(num)
  counter = 1
  sum = 0
  until counter > num
    sum += counter ** 2
    counter += 1
  end
  sum
end

def square_of_sum(num)
  counter = 1
  sum = 0
  until counter > num
    sum += counter
    counter += 1
  end
  sum ** 2
end

def sum_square_difference(num)
  square_of_sum(num) - sum_of_sqaures(num)
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150