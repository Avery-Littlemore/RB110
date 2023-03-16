def word_sizes(str)
  # hash = {}
  hash = Hash.new(0) # --> this gives a default value to hash elements such that I may use += 
  str.split.each do |el|
    hash[el.size] += 1
    # if hash[el.size] == nil 
    #   hash[el.size] = 1
    # else 
    #   hash[el.size] += 1
    # end
  end
  hash
end




p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}