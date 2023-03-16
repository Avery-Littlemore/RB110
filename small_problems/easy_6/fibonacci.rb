def fibonacci(current, prev)
  current + prev
end

def find_fibonacci_index_by_length(num_length)
  previous = 1
  current = 1
  counter = 2
  while current.to_s.size < num_length
    current, previous = fibonacci(current, previous), current
    #  binding.pry
    counter += 1
  end
  counter
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847