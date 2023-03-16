require 'pry'

NUMBERS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  '-' => -1,
  '+' => 0
}

def string_to_signed_integer(str)
  arr = str.chars
  neg = 0
  arr.map! do |el| 
    if el == '-'
      neg = 1
      0
    elsif el == '+'
      0
    else
      NUMBERS[el]
    end
  end

  # arr.inject(0) { |product, n| product * 10 + n }
  num = arr.inject { |product, n| product * 10 + n }

  neg == 1 ? -1 * num : num

  # value = 0
  # digits.each { |digit| value = 10 * value + digit }
  # value
end

# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end

# def string_to_integer(str)
#   arr = str.chars
#   arr.map! { |el| NUMBERS[el] }
#   # arr.inject(0) { |product, n| product * 10 + n }
#   arr.inject { |product, n| product * 10 + n }

#   # value = 0
#   # digits.each { |digit| value = 10 * value + digit }
#   # value
# end



p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100