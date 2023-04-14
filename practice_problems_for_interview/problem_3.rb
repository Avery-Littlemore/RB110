# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.
=begin

P:
write a method to capitalize every second letter of every third word
Input: string
Output: string with every other character in every third word uppercased

A:
split string into array of substrings
iterate through Array using each with index
  if it is a third word => index + 1 % 3 == 0
    
    # capitalize every other letter -> 
    divide word into array of characters
    iterate through characters and capitalize every other character index + 1 % 2 == 0
    
  else next

=end
# Examples:

def to_weird_case(str)
  arr = str.split
  arr.map.with_index do |substr, idx1|
    if (idx1 + 1) % 3 == 0
      substr.chars.map.with_index do |char, idx2|
        (idx2 + 1) % 2 == 0 ? char.upcase : char
      end.join
    else
      substr
    end
  end.join(' ')
end

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".