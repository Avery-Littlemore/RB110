require 'date'

def friday_13th(year)
  month = 1
  counter = 0
  while month < 13
    counter += 1 if Date.new(year, month, 13).friday?
    month += 1
  end
  counter
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2