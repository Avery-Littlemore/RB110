# Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, 
# and returns the same string with all even indexed characters in each 
# word upper cased, and all odd indexed characters in each word lower
# cased. The indexing just explained is zero based, so the zero-ith index 
# is even, therefore that character should be upper cased and you need to 
# start over for each word.

# The passed in string will only consist of alphabetical characters and 
# spaces(' '). Spaces will only be present if there are multiple words. 
# Words will be separated by a single space(' ').

=begin
P:
Write a function which takes input string and returns string with all 
even characters upcased. Odd characters lowercased.

Input: str
Output: str
Rules:
even letters upcased -> zero index
odd letters downcased
spaces ignored

A:
- split string into array of individual words
- iterate through each word
  - break word into array of characters
  - iterate through each character with index
    - if index % 2 == 0, upcase, else downcase

- join together with space


=end

def weirdcase(str)
  str.split.map do |word|
    word.chars.map.with_index do |letter, idx|
      idx % 2 == 0 ? letter.upcase : letter.downcase
    end.join
  end.join(' ')
end

p weirdcase('This') == 'ThIs'
p weirdcase('is') == 'Is'
p weirdcase('This is a test') == 'ThIs Is A TeSt'