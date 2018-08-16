SUITS = ['Heart', 'Diamond', 'Spade', 'Club']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def busted(hand_total)
  hand_total > SCORE_CEILING
end

def total(cards)
  values = cards.map { |card| card[1] }
  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > SCORE_CEILING
  end
  sum
end

def deal(stack)
  deal_card = stack.sample
  card_index = stack.find_index(deal_card)
  stack.delete_at(card_index)
  deal_card
end

def dealer_turn(hand, stack)
  until total(hand) > (DEALER_MAX - 1)
    sleep(1.5)
    header
    prompt "Dealer chose to hit#{', again' if !hand[2].nil?}."
    hand << deal(stack).to_a
  end
  if !busted(total(hand))
    sleep(2)
    header
    prompt "Dealer chose to stay"
    puts ""
    sleep(2)
  end
end

def header
  system'clear'
  puts "-- STACKJACK  #{SCORE_CEILING} --"
  puts ""
end

def detect_results(dealer_total, player_total)
  if player_total > SCORE_CEILING
    :player_busted
  elsif dealer_total > SCORE_CEILING
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_total, player_total)
  result = detect_results(dealer_total, player_total)
  header
  case result
  when :player_busted
    prompt "You busted! Dealer wins!"
  when :dealer_busted
    prompt "Dealer busted! You win!"
  when :player
    prompt "You win"
  when :dealer
    prompt "Dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def welcome
  puts ""
  prompt "Welcome to the STACKJACK Game!"
  sleep(1)
  puts ""
  puts "HOW TO PLAY"
  puts ""
  prompt "You will be playing against the Dealer"
  prompt "You each will be given one card face up that you both can see"
  prompt "Each card delt there after will be hidden from each other"
  prompt "The Ace can either be 1 or 11 points, at your descretion"
  prompt "Jack, Queen and King are 10 points each"
  prompt "Remaining cards are face value"
  prompt "You will have a choice to hit (get another card)"
  prompt "Get cards totaling closest to the STACKJACK score to win the round"
  prompt "The player to win 5 rounds first is the Grand Winner!"
  puts ""
  prompt "Automatic loss:"
  prompt "When player gets cards totaling over STACKJACK score (BUST)"
  puts ""
  sleep(1.5)
  puts "  PRESS ENTER TO BEGIN"
  begin_game = gets
end

loop do
  welcome

  score = nil

  loop do
    prompt "Please enter a STACKJACK score between 3 and 51"
    score = gets.to_i
    break if score > 2 && score < 52
  end

  SCORE_CEILING = score
  DEALER_MAX = (SCORE_CEILING / 5) * 4

  player_score = 0
  dealer_score = 0
  loop do
    cards = initialize_deck
    player_cards = []
    dealer_cards = []

    player_total = 0
    dealer_total = 0

    header
    sleep(1)
    player_cards << deal(cards).to_a
    prompt "Your first face up card is: #{player_cards}"
    puts ""
    sleep(1.5)
    dealer_cards << deal(cards).to_a
    prompt "The Dealers first face up card is: #{dealer_cards}"
    sleep(1.5)
    header
    sleep(2)
    second_card = deal(cards).to_a
    prompt "You're delt a second card: #{second_card}"
    player_cards << second_card
    puts ""
    sleep(1.5)
    dealer_face_up_card = deal(cards).to_a
    dealer_cards << dealer_face_up_card
    prompt "Dealer is delt there second card"

    sleep(1)
    header

    loop do
      answer = nil
      player_total = total(player_cards)
      dealer_total = total(dealer_cards)
      break if busted(player_total)
      sleep(1)
      prompt "You have #{player_cards.count} cards: #{player_cards}"
      prompt "Totaling: #{player_total}"
      sleep(1)
      puts ""
      prompt "Dealer has 2 cards and the #{dealer_face_up_card} is face up"
      puts ""

      loop do
        sleep(0.5)
        prompt "hit or stay? (h/s)"
        answer = gets.chomp.downcase
        header
        break if ['h', 's'].include?(answer)
        prompt "Sorry, must enter 'h' or 's'."
      end

      if answer == 'h'
        player_cards << deal(cards).to_a
        prompt "You chose to hit!"
        puts ""
      end

      break if answer == 's' || busted(player_total)
    end

    if !busted(player_total)
      sleep(1)
      prompt "You chose to stay!"
      puts ""
      prompt "Dealer turn..."
      sleep(1.5)
      header
      dealer_turn(dealer_cards, cards)
      dealer_total = total(dealer_cards)
    end

    display_result(dealer_total, player_total)

    case detect_results(dealer_total, player_total)
    when :player_busted
      dealer_score += 1
    when :dealer
      dealer_score += 1
    when :dealer_busted
      player_score += 1
    when :player
      player_score += 1
    end

    sleep(1.5)
    puts ""

    prompt "You have #{player_cards.count} cards: #{player_cards},
    total: #{player_total}"
    sleep(1)
    puts ""

    prompt "Dealer has #{dealer_cards.count} cards: #{dealer_cards},
    total: #{dealer_total}"
    sleep(1.5)
    puts ""

    prompt "SCORE:  Player: #{player_score}  Dealer: #{dealer_score}"
    sleep(2)
    puts ""

    prompt "PRESS ENTER KEY TO CONTINUE"
    continue = gets

    break if player_score == 5 || dealer_score == 5
  end
  response = nil
  loop do
    valid_response = ['y', 'yes', 'n', 'no']
    puts ""
    prompt "Would you like to play again? (y/n)"
    response = gets.chomp.downcase
    break unless valid_response.index(response).nil?
  end

  break if response[0] == 'n'
end

header
prompt "Thanks for playing! STACKJACK"
puts ""
