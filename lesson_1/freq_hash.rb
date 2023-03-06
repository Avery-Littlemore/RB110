statement = "The Flintstones Rock"

hash = {}

letters = ('A'..'Z').to_a + ('a'..'z').to_a

# p letters

letters.each do |char|
  if statement.include?(char)
    hash[char] = statement.count(char)
  end
end

p hash