def hours(int)
  if (int / 60) > 23
    int / 60 % 24
  else
    int / 60
  end
end

def mins(int)
  int % 60
end

def clockify(num_str)
  if num_str.to_i < 10
    num_str.prepend '0'
  else
    num_str
  end
end

def time_of_day(num)
  case num <=> 0
  when 1
    hour = hours(num).to_s
    min = mins(num).to_s
    hour = clockify(hour)
    min = clockify(min)
    "#{hour}:#{min}"
  when -1
    hour = (23 - hours(num * -1)).to_s
    min = (60 - mins(num * -1)).to_s
    hour = clockify(hour)
    min = clockify(min)
    "#{hour}:#{min}"
  else "00:00"
  end
end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
