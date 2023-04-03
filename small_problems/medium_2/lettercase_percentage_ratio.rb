def letter_percentages(str)
  lowercase = str.count("a-z")
  uppercase = str.count("A-Z")
  neither = str.size - lowercase - uppercase
  lower_percentage = lowercase * 100.0 / str.size
  upper_percentage = uppercase * 100.0 / str.size
  neither_percentage = neither * 100.0 / str.size
  hash = {
    lowercase: lower_percentage.round(2),
    uppercase: upper_percentage.round(2),
    neither: neither_percentage.round(2)
  }
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')