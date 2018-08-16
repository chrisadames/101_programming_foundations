SUITS = ['Heart', 'Diamond', 'Spade', 'Club']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def busted(hand)
  total(hand) > 21
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
    sum -= 10 if sum > 21
  end
  sum
end

def deal(stack)
  deal_card = stack.sample
  card_index = stack.find_index(deal_card)
  stack.delete_at(card_index)
  deal_card
end

def winner(player1, player2)
  if total(player1) == total(player2)
    prompt "It's a tie!"
  elsif total(player1) > total(player2)
    prompt "You are the winner"
  elsif total(player2) > total(player1)
    prompt "Dealer is the winner"
  end
  puts ""
end

def dealer_turn(hand, stack)
  until total(hand) > 16
    prompt "Dealer chose to hit#{', again' if !hand[2].nil?}."
    hand << deal(stack).to_a
    sleep(1)
    system'clear'
  end
  sleep(1)
  system'clear'
  if !busted(hand)
    prompt "Dealer chose to stay"
    puts ""
  end
end

loop do
  puts ""
  prompt "Welcome to the 21 Game!"
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
  prompt "The player with cards totaling closest to 21 wins"
  prompt "Automatic loss: When player gets cards totaling over 21 (BUST)"
  puts ""
  sleep(1.5)
  puts "  PRESS ENTER TO BEGIN"
  begin_game = gets
  break if begin_game == "\n"
end

loop do
  cards = initialize_deck

  player_cards = []
  dealer_cards = []

  system'clear'

  sleep(1)
  player_cards << deal(cards).to_a
  prompt "Your first face up card is: #{player_cards}"

  puts ""

  sleep(1)
  dealer_cards << deal(cards).to_a
  prompt "The Dealers first face up card is: #{dealer_cards}"

  sleep(1)
  system'clear'

  sleep(1.5)
  second_card = deal(cards).to_a
  prompt "You're delt a second card: #{second_card}"
  player_cards << second_card

  puts ""

  sleep(0.5)
  dealer_face_up_card = deal(cards).to_a
  dealer_cards << dealer_face_up_card
  prompt "Dealer is delt there second card"

  sleep(1)

  system 'clear'

  answer = nil

  loop do
    prompt "You have #{player_cards.count} cards: #{player_cards},
   total: #{total(player_cards)}"
    puts ""
    prompt "Dealer has 2 cards and the #{dealer_face_up_card} is face up"
    puts ""

    accepted = ['s', 'stay', 'h', 'hit']
    answer = ""

    loop do
      sleep(0.5)
      prompt "hit or stay? (h/s)"
      answer = gets.chomp.downcase
      system'clear'
      break if !accepted.index(answer).nil?
    end

    if answer == accepted[2] || answer == accepted[3]
      player_cards << deal(cards).to_a
    end

    break if (answer == 's' || answer == 'stay') || busted(player_cards)
  end

  if busted(player_cards)
    sleep(2)
    prompt "You BUSTED!"
    puts ""
    prompt "Dealer is the winner!"
  else
    sleep(1)
    prompt "You chose to stay!"
    sleep(1)
    dealer_turn(dealer_cards, cards)
  end

  if !busted(dealer_cards) && !busted(player_cards)
    winner(player_cards, dealer_cards)
  elsif busted(dealer_cards)
    prompt "Dealer BUSTED!"
    puts ""
    prompt "You are the winner!"
  end
  sleep(1.5)

  puts ""
  prompt "You have #{player_cards.count} cards: #{player_cards},
  total: #{total(player_cards)}"
  puts ""
  prompt "Dealer has #{dealer_cards.count} cards: #{dealer_cards},
  total: #{total(dealer_cards)}"
  sleep(3)

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

system'clear'
prompt "Thanks for playing!"
puts ""
