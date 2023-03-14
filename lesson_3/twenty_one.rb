VALUES = {
  'Ace' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  '10' => 10,
  'Jack' => 10,
  'Queen' => 10,
  'King' => 10
}

MAX = 21
DEALER_STAY_MIN = 17

def prompt(msg)
  puts "=> #{msg}"
end

def select_card!(deck)
  suit = deck.keys.sample
  card = deck[suit].sample
  card = deck[suit].delete(card)
  card.to_s
end

def cards_in_hand(arr)
  case arr.size
  when 2 then arr.join(' and ')
  else
    new_arr = arr.dup
    new_arr[-1] = "and #{arr.last}"
    new_arr.join(', ')
  end
end

def summate(arr)
  values_arr = arr.map { |card| VALUES[card] }
  return values_arr.sum + 10 if values_arr.include?(1) && values_arr.sum < 12

  values_arr.sum
end

player_score = 0
dealer_score = 0

system 'clear'
prompt 'Welcome to 21, a game of skill and chance!'
prompt 'Whoever reaches 5 victories first will be declared the champion...!'
loop do
  loop do
    deck = {
      'hearts' => %w[Ace 2 3 4 5 6 7 8 9 10 Jack Queen King],
      'clubs' => %w[Ace 2 3 4 5 6 7 8 9 10 Jack Queen King],
      'diamonds' => %w[Ace 2 3 4 5 6 7 8 9 10 Jack Queen King],
      'spades' => %w[Ace 2 3 4 5 6 7 8 9 10 Jack Queen King]
    }
    player_cards = []
    dealer_cards = []

    player_cards << select_card!(deck)
    dealer_cards << select_card!(deck)
    player_cards << select_card!(deck)
    dealer_cards << select_card!(deck)

    player_total = summate(player_cards)
    dealer_total = summate(dealer_cards)

    loop do
      prompt "Dealer has: #{dealer_cards.first} showing (one card is hidden)"
      prompt "You have: #{cards_in_hand(player_cards)} (total = #{player_total})"
      prompt 'Do you want to hit or stay?'
      answer = gets.chomp
      if answer.downcase.start_with?('h')
        player_cards << select_card!(deck)
        player_total = summate(player_cards)
        if player_total > MAX
          prompt "BUSTED! After drawing #{player_cards.last}, your hand total is #{player_total}." \
                 'Better luck next time!'
          dealer_score += 1
          break
        end
        next
      elsif answer.downcase.start_with?('s')
        prompt "You are staying with #{player_total}"
        prompt "Dealer reveals second card to show: #{cards_in_hand(dealer_cards)} (total = #{dealer_total})"
        loop do
          break if dealer_total >= DEALER_STAY_MIN

          dealer_cards << select_card!(deck)
          dealer_total = summate(dealer_cards)
          if dealer_total > MAX
            prompt "BUSTED! After drawing #{dealer_cards.last}, Dealer's hand total is #{dealer_total}. Nice win!!!"
            player_score += 1
            break
          end
          prompt "Dealer hits and has: #{cards_in_hand(dealer_cards)} (total = #{dealer_total})"
        end
        if dealer_total == player_total
          prompt 'Tie goes to the Dealer, unlucky!'
          dealer_score += 1
        elsif dealer_total > player_total && dealer_total <= 21
          prompt "Dealer wins with #{dealer_total} vs your #{player_total}... nice try!"
          dealer_score += 1
        elsif dealer_total < player_total
          prompt "You win with #{player_total} vs Dealer's #{dealer_total}!!!"
          player_score += 1
        end
        break
      else
        prompt 'Please type either hit or stay'
        next
      end
    end
    break
  end

  if player_score == 5
    prompt "Excellent victory! You have defeated the computer -> Player: #{player_score} vs Dealer: #{dealer_score}"
    prompt 'Congrats, champ!!!'
    break
  elsif dealer_score == 5
    prompt 'And the house takes it, as the odds would predict.'
    prompt "Dealer: #{dealer_score} vs Player: #{player_score}. Strong effort!"
    break
  else
    prompt "The score is now Player: #{player_score} vs Dealer: #{dealer_score}"
  end

  prompt 'Would you like to play again? (y or n)'
  one_more = gets.chomp
  break unless one_more.downcase.start_with?('y')
end

prompt "Thanks for playing! Goodbye!"
