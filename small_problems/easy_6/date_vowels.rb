def remove_vowels(str_arr)
  # str_arr.map { |string| string.delete('aeiouAEIOU') }
  str_arr.map do |word|
    word.gsub!(/['^AaEeIiOoUu']/, '')
    word
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']