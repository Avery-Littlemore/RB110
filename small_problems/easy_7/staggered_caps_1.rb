def staggered_case(str)
  str_array = str.chars
  str_array.each_with_index do |char, idx|
    if idx % 2 == 0
      char.upcase!
    else
      char.downcase!
    end
  end
  str_array.join
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'