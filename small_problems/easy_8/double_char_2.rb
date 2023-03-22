CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def repeater(str)
  result = ''
  #   str.each_char do |char|
  str.chars.each do |char|
    result << char << char
  end
  result
end

def double_consonants(str)
  result = ''
  str.each_char do |char|
    if CONSONANTS.include?(char.downcase)
      result << char << char
    else 
      result << char
    end
  end
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""