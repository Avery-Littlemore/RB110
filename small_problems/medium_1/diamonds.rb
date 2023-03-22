def diamond(odd_int)
  if odd_int.even?
    puts 'The integer entered is even. It must be odd for this exercise.'
  else
    half = odd_int/2 + 1
    1.upto(half) do |idx|
      puts "#{' ' * (half-idx) + '*' * (idx) + '*' * (idx - 1) }"
    end
    (half + 1).upto(odd_int) do |idx|
      puts "#{' ' * (idx - half) + '*' * (odd_int - idx + 1) + '*' * (odd_int - idx)}"
    end
  end
end

# diamond(8)
# diamond(1)
# diamond(3)
diamond(9)