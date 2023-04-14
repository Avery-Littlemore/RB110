# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

=begin
P:
Write method that takes a string and returns the character which occurs in the string with the lowest frequency
If mutiple characters meet this criteria, return the one that occurs first in the string.
Consider both uppercase and lowercase to be the same (downcase everything)

Input: string
Output: character (str)
Rules: if equal number of lowest freq, return the first one in the string

A:
- initialize return_str = ''
- initialize freq = str.size
- break into an array of lowercase letters => input str.downcase.chars
- iterate through the array using each_with_index
  - slice array from idx + 1 to end of array (array.size - idx)
  - use count method to determine # of occurrences of the current character
  - if the # of occurrences is < freq, reassign return_str to current char
- return return_str

=end

def least_common_char(str)
  return_str = ''
  lowest_freq = str.size + 1
  lowercase_array = str.downcase.chars
  lowercase_array.each do |char|
    current_freq = lowercase_array.count(char)
    if current_freq < lowest_freq
      return_str = char
      lowest_freq = current_freq
    end
  end
  return_str
end


# Examples:

p least_common_char("Hello World") #== "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
p least_common_char("Mississippi") #== "m"
p least_common_char("Happy birthday!") #== ' '
p least_common_char("aaaaaAAAA") #== 'a'

# The tests above should print "true".