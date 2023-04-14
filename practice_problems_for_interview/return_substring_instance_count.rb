# Complete the solution so that it returns the number of times the search_text is found within the full_text.

def solution(full_text, search_text)
  
  result = 0
  0.upto(full_text.size - search_text.size) do |num|
    result += 1 if full_text[num, search_text.size] == search_text
  end
  result
end


p solution('aa_bb_cc_dd_bb_e', 'bb') == 2 # should return 2 since bb shows up twice
p solution('aaabbbcccc', 'bbb') == 1 # should return 1

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1