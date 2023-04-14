# For a given nonempty string s find a minimum substring t and the maximum number k, 
# such that the entire string s is equal to t repeated k times.
# The input string consists of lowercase latin letters.
# Your function should return :
# an array [t, k] (in Ruby and JavaScript)

=begin
P: 
Write a method which takes a string as input
find the minimum substring that is repeated within the string.
The number will be the number of times that substring is repeated
If no substrings are repeated, the original string is returned with number 1

Input: string
Output: array => [substring, integer]

A: 
- create smallest_substring = str
- create num_of_repititions = 1
- take the first character and see if it is repeated throughout the string
  - do this by calculating the size of the substring, size of the full string, and see if it is divislbe -> if so, multiply substring and compare
  - if yes
    - count occurrences (would be equal to size of string)
    - set smallest_substring and num_of_repitions, and return (any further finds will be longer substrings)
  - if no, take first two characters and repeat
  - iterate until we have reached halfway point
    - if none are found, we return the full string and 1


=end

  def f(str)
    1.upto(str.size / 2) do |idx|
      current_substr = str[0, idx]
      next if str.size % current_substr.size != 0
      repeats = str.size / current_substr.size
      if current_substr * repeats == str
        return [current_substr, repeats]
      end
    end
    [str, 1]
  end

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]