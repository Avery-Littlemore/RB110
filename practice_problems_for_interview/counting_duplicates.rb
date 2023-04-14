# Write a function that will return the count of distinct case-insensitive 
# alphabetic characters and numeric digits that occur more than once in the 
# input string. The input string can be assumed to contain only alphabets 
# (both uppercase and lowercase) and numeric digits.

=begin
P: 
Count each characters occurences within the string. If any characters occur more than
one, add 1 to the return value. If they occur more than twice, still only 1 is added.

Input: str
output: num

A: 
iterate through substring as characters
if a duplicated letter is found, add it to another array and + 1
  any subsequent duplicated letters should check if it exists in the substring. if yes, +0, if no, +1


=end

def duplicate_count(str)
  duplicated_letters = ''
  result = 0
  str.downcase.chars.each do |char|
    if str.downcase.count(char.downcase) > 1 && duplicated_letters.count(char.downcase) == 0
      result += 1
      duplicated_letters << char
    else
      next
    end
  end
  result
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2