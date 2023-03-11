# frozen_string_literal: true

# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

require 'pry'

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
    new_arr = arr.join(', ')
    new_arr[-1] = "and #{arr.last}"
    binding.pry
    new_arr
  end
end

def summate(arr)
  values_arr = arr.map { |card| VALUES[card] }
  return values_arr.sum + 10 if values_arr.include?(1) && values_arr.sum < 12

  values_arr.sum
end

loop do
  system 'clear'
  prompt 'Welcome to 21, a game of skill and chance!'
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

    loop do
      prompt "Dealer has: #{dealer_cards.first} showing (one card is hidden)"
      prompt "You have: #{cards_in_hand(player_cards)} (total = #{summate(player_cards)})"
      prompt 'Do you want to hit or stay?'
      answer = gets.chomp
      if answer.downcase.start_with?('h')
        player_cards << select_card!(deck)
        if summate(player_cards) > 21
          prompt "BUSTED! After drawing #{player_cards.last}, your hand total is #{summate(player_cards)}. Better luck next time!"
          break
        end
        next
      elsif answer.downcase.start_with?('s')
        prompt "You are staying with #{summate(player_cards)}"
        prompt "Dealer reveals second card to show: #{cards_in_hand(dealer_cards)} (total = #{summate(dealer_cards)})"
        loop do
          break if summate(dealer_cards) >= 17

          dealer_cards << select_card!(deck)
          if summate(dealer_cards) > 21
            prompt "BUSTED! After drawing #{dealer_cards.last}, Dealer's hand total is #{summate(dealer_cards)}. Nice win!!!"
            break
          end
          prompt "Dealer hits and has: #{cards_in_hand(dealer_cards)} (total = #{summate(dealer_cards)})"
        end
        prompt 'Tie goes to the Dealer, unlucky!' if summate(dealer_cards) == summate(player_cards)
        prompt "Dealer wins with #{summate(dealer_cards)} vs your #{summate(player_cards)}..." if summate(dealer_cards) > summate(player_cards) && summate(dealer_cards) <= 21
        prompt "You win with #{summate(player_cards)} vs Dealer's #{summate(dealer_cards)}!!!" if summate(dealer_cards) < summate(player_cards)
        break
      else
        prompt 'Please type either hit or stay'
        next
      end
    end
    break
  end

  prompt 'Would you like to play again? (y or n)'
  one_more = gets.chomp
  break unless one_more.downcase.start_with?('y')
end

prompt "Thanks for playing! Goodbye!"