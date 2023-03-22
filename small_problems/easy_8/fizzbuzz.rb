# if div by 3, "Fizz", if div by 5 "Buzz", if both, "FizzBuzz"

def fizzbuzz(first, final)
  output_str = ''
  # first.upto(final) do |index| --> alternative
  (first..final).each do |index|
    if index % 3 == 0 && index % 5 == 0
      output_str << "FizzBuzz"
    elsif index % 3 == 0
      output_str << "Fizz"
    elsif index % 5 == 0
      output_str << "Buzz"
    else
      output_str << index.to_s
    end
    output_str << ', ' if index != final
  end
  p output_str
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz