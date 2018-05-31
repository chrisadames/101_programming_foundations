VALID_CHOICES = ['r', 'p', 'sc', 'l', 'sp']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
  (first == 'paper' && (second == 'rock' || second == 'spock')) ||
  (first == 'scissors' && (second == 'lizard' || second == 'paper')) ||
  (first == 'lizard' && (second == 'paper' || second == 'spock')) ||
  (first == 'spock' && (second == 'rock' || second == 'scissors'))
end

newhash = { 'r' => 'rock',
            'p' => 'paper',
            'sc' => 'scissors',
            'l' => 'lizard',
            'sp' => 'spock' }

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def score_results(player, computer)
  if win?(player, computer)
    1
  elsif win?(computer, player)
    2
  end
end

prompt("Welcome to the #{newhash.values.join(', ')} game!
  \n   first to win 5 times is the GRAND WINNER!")
loop do
  player_score = 0
  computer_score = 0
  while player_score < 3 && computer_score < 3

    choice = ''
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = Kernel.gets().chomp()

      computer_choice = VALID_CHOICES.sample

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{newhash[choice]}; Computer chose:
      #{newhash[computer_choice]}")

    display_results(newhash[choice], newhash[computer_choice])

    if score_results(newhash[choice], newhash[computer_choice]) == 1
      player_score += 1
    elsif score_results(newhash[choice], newhash[computer_choice]) == 2
      computer_score += 1
    end
  end

  prompt("You are the Grand Winner! Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
