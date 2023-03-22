def leading_substrings(str)
  arr = []
  counter = 0
  until counter == str.size
    arr << str.slice(0, counter + 1)
    counter += 1
  end
  arr
end

def substrings(str)
  result = []
  0.upto(str.size - 1) do |index|
    result << leading_substrings(str[index..str.size])
  end
  result.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]