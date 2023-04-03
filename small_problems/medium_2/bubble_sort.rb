def bubble_sort!(arr)
  loop do
    arr2 = arr.dup
    first = 0
    second = 1
    while second < arr.size
      compare = arr[first] <=> arr[second]
      arr[first], arr[second] = arr[second], arr[first] if compare > 0 
      first += 1
      second += 1
    end
    break if arr2 == arr
  end
  arr
end

array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)