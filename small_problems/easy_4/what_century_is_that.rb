def century(year)
  if year % 100 == 0
    century = (year / 100).to_s
  else
    century = (year / 100 + 1).to_s
  end
  if century[-1] == '1' && century[-2] != '1'
    century + 'st'
  elsif century[-1] == '2' && century[-2] != '1'
    century + 'nd'
  elsif century[-1] == '3' && century[-2] != '1'
    century + 'rd'
  else
    century + 'th'
  end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'