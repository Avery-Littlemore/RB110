# The vowel substrings in the word codewarriors are o,e,a,io.
# The longest of these has a length of 2. Given a lowercase 
# string that has alphabetic characters only (both vowels and consonants) 
# and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.

# find first character in string that is a vowel
# check if the next character is also a vowel. If yes, repeat until a consonant is found or end of string is reached
# count number of vowels in string. If larger than current longest string of vowels, replace the longest string count


# return: number

# 

def solve(str)
  result = 0
  str.chars.each_with_index do |char, idx|
    if ('aeiou').include?(char)
      count = 1
      loop do
        if (idx + count < str.size) && ('aeiou').include?(str[idx + count])
          count += 1
        else
          result = count if count > result
          break
        end
      end
    end
  end
  result
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8