=begin
Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

Only lower case letters will be used (a-z). No punctuation or digits will be included.
Input strings s1 and s2 are null terminated.

P:
Write method that takes two strings as input. Method checks if characters in string 1 can be rearranged such that they make up string2

Input: String, String
output: boolean T/F
Rules:
  - portion of str1 characters make up str2
  - str1 > str2 in length

A: 
- return false if str2.size > str1.size
- create array of str2 characters
- iterate through array of str2 characters
  - if str1 includes the str2 character
    - delete that character from str1 and go next
  - else
    - return false

=end

def scramble(str1, str2)
  return false if str2.size > str1.size

  str2.chars.each do |char|
    if str1.include?(char)
      str1[str1.index(char)] = ''
    else
      return false
    end
  end
  true
end

p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false

p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true
