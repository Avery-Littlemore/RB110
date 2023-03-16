require 'pry'

NUMBERS = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}

def signed_integer_to_string(num)
  if num > 0
    num.digits.reverse.map { |el| NUMBERS[el] }.join.prepend('+')
  elsif num < 0
    (num * -1).digits.reverse.map { |el| NUMBERS[el] }.join.prepend('-')
  else 
    num.digits.map { |el| NUMBERS[el] }.join
  end
end



p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'