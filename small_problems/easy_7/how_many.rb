def count_occurrences(arr)
  hash = Hash.new(0)
  arr.each do |el|
    hash[el] += 1
  end
  hash.each do |key, value|
    puts "#{key} => #{value}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
