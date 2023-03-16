def multisum(max_num)

  (1..max_num).inject(0) do |product, n| 
    if n % 5 == 0 || n % 3 == 0
      product + n 
    else
      product
    end
  end

  # threes_arr = []
  # fives_arr = []
  # three_factorial_counter = max_num / 3
  # five_factorial_counter = max_num / 5
  # until three_factorial_counter == 0
  #   threes_arr << three_factorial_counter * 3
  #   three_factorial_counter -= 1
  # end
  # until five_factorial_counter == 0
  #   fives_arr << five_factorial_counter * 5
  #   five_factorial_counter -= 1
  # end
  # total_arr = threes_arr + fives_arr
  # total_arr.uniq.sum
end



puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(20) == 98
puts multisum(1000) == 234168