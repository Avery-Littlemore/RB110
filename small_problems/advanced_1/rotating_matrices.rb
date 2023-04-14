# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# 1  5  8 -> 2, 2, 2
# 4  7  2 -> 1, 1, 1
# 3  9  6 -> 0, 0, 0

# 3  4  1
# 9  7  5
# 6  2  8

# 3  4  1
# 9  7  5

# 9  3
# 7  4
# 5  1

def rotate90(outer_arr)
  result = [[]]
  outer_arr.each do |sub_arr|
    sub_arr.each_with_index do |num, idx|
      counter = 0
      if result[idx]
        result[idx + counter].unshift(num)
        counter += 1
      else
        result << [num]
        counter += 1
      end
    end
  end
  result
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2