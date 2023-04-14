# 1  5  8
# 4  7  2
# 3  9  6

# 1  4  3
# 5  7  9
# 8  2  6

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# matrix = [
#   [1, 4, 3],
#   [5, 7, 9],
#   [8, 2, 6]
# ]

def transpose(arr_of_arrs)
  new_arr = []
  arr_of_arrs.size.times do |counter|
    new_arr << grab_elements(arr_of_arrs, counter)
  end
  new_arr
end

def grab_elements(arr, which_el)
  transposed_line = []
  arr.each do |sub_arr|
    transposed_line << sub_arr[which_el]
  end
  transposed_line
end


matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]