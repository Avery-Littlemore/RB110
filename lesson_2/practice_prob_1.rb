arr = ['10', '11', '9', '7', '8']

arr.sort_by! do |n|
  n.to_i
end

p arr.reverse!

# OR:

arr.sort do |a,b|
  b.to_i <=> a.to_i
end
# => ["11", "10", "9", "8", "7"]