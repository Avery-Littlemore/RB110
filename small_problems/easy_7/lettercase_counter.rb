UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def upper?(letter)
  ('A'..'Z').include?(letter)
end

def lower?(letter)
  ('a'..'z').include?(letter)
end

def letter_case_count(str)
  hash = {
    uppercase: 0,
    lowercase: 0,
    neither: 0
  }
  str.chars do |letter|
    if upper?(letter)
      hash[:uppercase] += 1
    elsif lower?(letter)
      hash[:lowercase] += 1
    else
      hash[:neither] += 1
    end
  end
  hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }