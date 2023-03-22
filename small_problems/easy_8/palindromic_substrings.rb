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

def palindromes(str)
  sub_arr = substrings(str)
  sub_arr.select! do |el|
    el.size > 1 && el.reverse == el
  end
  sub_arr
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]