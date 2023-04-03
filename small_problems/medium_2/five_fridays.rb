require 'date'

def five_fridays(year)
  month = 1
  day = 1
  friday_counter = 0
  five_in_a_month = 0
  while month < 13
    while day < 32
      friday_counter += 1 if Date.new(year, month, day).friday?
      break if Date.new(year, month, day) == Date.new(year, month, -1)
      day += 1
    end
    five_in_a_month += 1 if friday_counter == 5
    friday_counter = 0
    day = 1
    month += 1
  end
  five_in_a_month
end

p five_fridays(2015) 
p five_fridays(1986) 
p five_fridays(2019) 