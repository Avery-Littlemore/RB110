UPPERCASE_LETTERS = ('A'..'Z').to_a
LOWERCASE_LETTERS = ('a'..'z').to_a

def staggered_case(str)
  chars = str.chars
  result = ''
  need_upcase = true
  chars.each do |char|
    if UPPERCASE_LETTERS.include?(char) || LOWERCASE_LETTERS.include?(char)
      char.upcase! if need_upcase == true
      char.downcase! if need_upcase == false
      need_upcase = !need_upcase
    end
  end
  chars.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'