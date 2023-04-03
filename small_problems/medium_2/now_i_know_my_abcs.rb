PAIRS = [
  %w(B O),
  %w(X K),
  %w(D Q),
  %w(C P),
  %w(N A),
  %w(G T),
  %w(R E),
  %w(F S),
  %w(J W),
  %w(H U),
  %w(V I),
  %w(L Y),
  %w(Z M)
]
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

def block_word?(str)
  PAIRS.each do |sub_arr|
    if str.downcase.include?(sub_arr[0].downcase) && str.downcase.include?(sub_arr[1].downcase)
      return false
    end
  end
  true
end


p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
