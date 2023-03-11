def uuid(param = '')
  if param.empty?
    characters = []
    ('a'..'f').each {|letter| characters << letter}
    (0..9).each {|num| characters << num}
    first = characters.sample(8).join
    second = characters.sample(4).join
    third = characters.sample(4).join
    fourth = characters.sample(4).join
    fifth = characters.sample(12).join
    puts "#{first}-#{second}-#{third}-#{fourth}-#{fifth}"
  else
    puts "param is not empty --> #{param}" 
  end
end

uuid()

