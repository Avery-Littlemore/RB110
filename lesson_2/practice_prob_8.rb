hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |k,v|
  v.each do |str|
    str.chars.each do |char|
      puts char if ('AEIOUaeiou').include?(char)
    end
  end
end