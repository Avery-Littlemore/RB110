# A pangram is a sentence that contains every single letter of the alphabet at least once.
# For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram,
# because it uses the letters A-Z at least once (case is irrelevant).

# Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

=begin
P:
Write a method that takes a string and detects whether it is a panagram (a string which contains EVERY letter in the alphabet)

Input: str
Output: boolean

A: 
- Create an alphabet array which contains every letter in the alphabet
- Create a second alphabet array for mutating
- Iterate through the alphabet
  - use the include? method to discern whether the string includes the letter. If so, delete it from the sub_arr
- if sub_arr is empty? return true


=end

def pangram?(string)
  iterator_alphabet = ('a'..'z').to_a
  mutating_alph =  ('a'..'z').to_a
  iterator_alphabet.each do |letter|
    if string.downcase.include?(letter)
      mutating_alph.delete(letter)
    end
  end
  mutating_alph.empty?
end

p pangram?("The quick brown fox jumps over the lazy dog.") == true
p pangram?("This is not a pangram.") == false
