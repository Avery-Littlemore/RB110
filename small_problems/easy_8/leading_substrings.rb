def leading_substrings(str)
  arr = []
  counter = 0
  until counter == str.size
    arr << str.slice(0, counter + 1)
    counter += 1
  end
  arr
end


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']