# In this kata, you have to count lowercase letters in a given string and return the letter count 
# in a hash with 'letter' as key and count as 'value'. The key must be 'symbol' instead of string 
# in Ruby and 'char' instead of string in Crystal.

# 

def letterCount(str)
  result = Hash.new(0)
  str.chars.each do |char|
    result[char.to_sym] += 1
  end
  result
end


p letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}