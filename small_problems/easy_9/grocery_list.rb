def buy_fruit(nested_arr)
  result = []
  nested_arr.each_with_index do |_, idx|
    nested_arr[idx][1].times do
      result << nested_arr[idx][0]
    end
  end
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]