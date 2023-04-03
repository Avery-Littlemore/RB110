def balanced?(str)
  left = '('
  right = ')'
  open_brackets = 0
  # str.each_char do |char|
  str.chars.each do |char|
    if char == left
      open_brackets += 1
    elsif char == right && open_brackets > 0
      open_brackets -= 1
    elsif char == right && open_brackets == 0
      return false
    else
      next
    end
  end
  open_brackets.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false