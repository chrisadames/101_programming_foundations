WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagnols

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

OPENING_MOVE = 'choose'

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |   #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |   #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |   #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd), ', ')}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def computer_offence_then_defense(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end
  square
end

def computer_places_piece!(brd)
  square = computer_offence_then_defense(brd)
  if !square && brd[5] == ' '
    square = 5
  elsif !square
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def place_piece!(brd, currently)
  if currently == PLAYER_MARKER
    player_places_piece!(brd)
  elsif !currently
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def alternate_player(currently)
  if currently == COMPUTER_MARKER
    PLAYER_MARKER
  else
    COMPUTER_MARKER
  end
end

loop do
  playerscore = 0
  computerscore = 0

  playerbegin = nil
  current_player = nil

  prompt "Welcome to the Tic Tac Toe extravagansa!"
  prompt "Winner will be crowned by winning 5 rounds."
  puts ""
  loop do
    prompt "Please choose if player or computer will move first"
    prompt "(player/computer)"
    playerbegin = gets.chomp
    current_player =
      if OPENING_MOVE == 'player' || (OPENING_MOVE ==
       'choose' && playerbegin == 'player')
        then PLAYER_MARKER
      elsif OPENING_MOVE == 'computer' || (OPENING_MOVE ==
        'choose' && playerbegin == 'computer')
        then COMPUTER_MARKER
      end
    break if ['player', 'computer'].include?(playerbegin)
    prompt "That was not a valid entry (player/computer)"
  end

  loop do
    board = initialize_board

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if detect_winner(board) == 'Player'
      playerscore += 1
      prompt "#{detect_winner(board)} won this round!\nSCORE:
       Player (#{playerscore})   Computer (#{computerscore})"
    elsif detect_winner(board) == 'Computer'
      computerscore += 1
      prompt "#{detect_winner(board)} won this round!\n
      SCORE:   Player (#{playerscore})   Computer (#{computerscore})"
    else
      prompt "It's a tie!"
    end
    puts ""
    prompt "PRESS ENTER TO CONTINUE"
    response = gets
    break if playerscore == 5 || computerscore == 5
  end

  prompt "Thank you for playing tic tac toe"
  will_play = nil
  loop do
    prompt "Play again? (y or n)"
    will_play = gets.downcase.chomp
    break if ['n', 'no', 'y', 'yes'].include?(will_play)
    system 'clear'
    prompt "That was an invalid response"
  end
  system 'clear'
  break if ['n', 'no'].include?(will_play)
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
