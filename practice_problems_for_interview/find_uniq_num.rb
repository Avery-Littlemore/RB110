def find_uniq(arr)
  arr.uniq.each do |num|
    return num if arr.count(num) == 1
  end
end

p find_uniq([1,1,1,1,0]) == 0
p find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
p find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55