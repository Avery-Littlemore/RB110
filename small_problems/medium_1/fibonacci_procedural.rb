def fib_increment(num1, num2)
  num1 + num2
end

def fibonacci(num)
  return 1 if num == 1 || num == 2
  current = 1
  prev = 1
  counter = 2
  until counter == num
    current, prev = fib_increment(current, prev), current
    counter += 1
  end
  current
end

# def fibonacci(num)
#   if num < 2
#     num
#   else
#     fibonacci(num-1) + fibonacci(num-2)
#   end
# end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501