def reverse_words(str)
  arr = str.split
  result = []
  arr.each do |word|
    if word.size >= 5
      result << word.chars.reverse.join
    else 
      result << word
    end
  end
  result
end

p reverse_words('Professional')          # => lanoisseforP
p reverse_words('Walk around the block') # => Walk dnuora the kcolb
p reverse_words('Launch School')         # => hcnuaL loohcS