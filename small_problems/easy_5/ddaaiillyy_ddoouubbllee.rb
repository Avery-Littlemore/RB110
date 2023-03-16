def crunch(str)
  str_arr = str.chars
  counter = 0
  reduced_arr = str_arr.map do |char|
    if char == str_arr[counter - 1] && counter > 0
      counter += 1
      ''
    else
      counter += 1
      char
    end
  end
  reduced_arr.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''