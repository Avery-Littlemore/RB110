def before_midnight(str)
  time = str.split(':')
  hours = time[0].to_i
  minutes = time[1].to_i
  hours %= 24 if hours >= 24
  if hours > 0 || minutes > 0
    1440 - hours * 60 - minutes
  else
    0
  end
end

def after_midnight(str)
  time = str.split(':')
  hours = time[0].to_i
  minutes = time[1].to_i
  hours %= 24 if hours >= 24
  hours * 60 + minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
