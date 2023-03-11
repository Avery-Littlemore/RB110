# frozen_string_literal: true

# 1. Display the initial empty 3x3 board.
# 2. Ask the user to mark a square.
# 3. Computer marks a square.
# 4. Display the updated board state.
# 5. If winner, display winner.
# 6. If board is full, display tie.
# 7. If neither winner nor board is full, go to #2
# 8. Play again?
# 9. If yes, go to #1
# 10. Good bye!

require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
MIDDLE_SQUARE = 5
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]] # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're an #{PLAYER_MARKER}. Computer is an #{COMPUTER_MARKER}."
  puts ''
  puts '     |     |'
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts '     |     |'
  puts ''
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

# def joinor(arr, delimiter=', ', word='or')
#   case arr.size
#   when 0 then ''
#   when 1 then arr.first.to_s
#   when 2 then arr.join(" #{word} ")
#   else
#     arr[-1] = "#{word} #{arr.last}"
#     arr.join(delimiter)
#   end
# end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def joinor(arr, delimiter = ', ', andor = 'or')
  num_of_elements = arr.count
  count = 0
  joined_str = ''
  until count == num_of_elements
    if num_of_elements == 2 && count.zero?
      joined_str += "#{arr[count]} #{andor} "
    elsif count == num_of_elements - 1
      joined_str += arr[count].to_s
    else
      joined_str += "#{arr[count]}#{delimiter}"
      joined_str += "#{andor} " if count == num_of_elements - 2
    end
    count += 1
  end
  joined_str
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

# def player_places_piece!(brd)
#   square = ''
#   loop do
#     prompt "Choose a square (#{joinor(empty_squares(brd))}):"
#     square = gets.chomp.to_i
#     break if empty_squares(brd).include?(square)

#     prompt "Sorry, that's not a valid choice."
#   end
#   brd[square] = PLAYER_MARKER
# end

# rubocop:disable Metrics/MethodLength
def place_piece!(brd, player)
  if player == PLAYER_MARKER
    square = ''
    loop do
      prompt "Choose a square (#{joinor(empty_squares(brd))}):"
      square = gets.chomp.to_i
      break if empty_squares(brd).include?(square)

      prompt "Sorry, that's not a valid choice."
    end
    brd[square] = PLAYER_MARKER
  else
    brd[defense(brd)] = COMPUTER_MARKER
  end
end
# rubocop:enable Metrics/MethodLength

def alternate_player(player)
  return COMPUTER_MARKER if player == PLAYER_MARKER
  return PLAYER_MARKER if player == COMPUTER_MARKER
end

# rubocop:disable Metrics/AbcSize,
def defense(brd)
  player_filled_squares = brd.select { |_, v| v == PLAYER_MARKER }.keys
  comp_filled_squares = brd.select { |_, v| v == COMPUTER_MARKER }.keys
  WINNING_LINES.each do |sub_arr|
    potential_target = sub_arr - comp_filled_squares
    potential_threat = sub_arr - player_filled_squares
    return potential_target.first if potential_target.size == 1 && empty_squares(brd).include?(potential_target.first)
    return potential_threat.first if potential_threat.size == 1 && empty_squares(brd).include?(potential_threat.first)
  end
  return MIDDLE_SQUARE if empty_squares(brd).include?(MIDDLE_SQUARE)

  empty_squares(brd).sample
end
# rubocop:enable Metrics/AbcSize

# def computer_places_piece!(brd)
#   brd[defense(brd)] = COMPUTER_MARKER
# end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    return 'Player' if brd.values_at(*line).count(PLAYER_MARKER) == 3 # *line == line[0], line[1], line[2]
    return 'Computer' if brd.values_at(*line).count(COMPUTER_MARKER) == 3
  end
  nil
end

def comp_opts_for_first?
  [true, false].sample
end

player_tally = 0
computer_tally = 0

loop do
  board = initialize_board
  prompt 'Would you like to go first? (y or n)'
  user_start = gets.chomp
  comp_start = comp_opts_for_first?

  if user_start.downcase.start_with?('y') && comp_start
    current_player = PLAYER_MARKER
    loop do
      display_board(board)
      prompt 'You and the Computer have agreed that you should go first.'
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end
  elsif user_start.downcase.start_with?('n') && comp_start
    current_player = COMPUTER_MARKER
    loop do
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)

      display_board(board)
      prompt 'You and the Computer have agreed that they should go first.'
    end
  else
    if user_start.start_with?('y')
      prompt 'You and the computer have both chosen to go first. Only one of you may start. ' \
             'Please try again until you have agreement with the Computer of who goes first.'
    elsif user_start.start_with?('n')
      prompt 'You and the computer have both chosen to go second. One of you must start. ' \
             'Please try again until you have agreement with the Computer of who goes first.'
    else
      prompt 'That is not a valid entry. Please select either y or n'
    end
    next
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    player_tally += 1 if detect_winner(board) == 'Player'
    computer_tally += 1 if detect_winner(board) == 'Computer'
    prompt "The score is now Player: #{player_tally} vs Computer: #{computer_tally}"
  else
    prompt "It's a tie!"
  end

  break if player_tally == 5 || computer_tally == 5

  prompt 'Play again? The computer wishes to play until one of you reaches 5 (y or n)'
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt 'Thanks for playing Tic Tac Toe! Goodbye!'
