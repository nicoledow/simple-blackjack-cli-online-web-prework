def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand 1..11
    return card
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  sum = first_card + second_card
  display_card_total(sum)
  return sum
end

def hit?(current_card_total)
  prompt_user
  response = get_user_input
  
  if response == "s"
    return current_card_total
  elsif response == "h"
    current_card_total += deal_card
    return current_card_total
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  #welcome the player
  welcome
  
  #deal their first two cards (their initial round)
  initial_round
  
  #call #hit? and #display_card_total until card total is greater than 21
    card_sum = initial_round
  while card_sum <= 21
    hit?(card_sum)
    display_card_total(card_sum)
    card_sum += hit?(card_sum)
  end
  
  #end the game when total is greater than 21
  end_game(card_sum)
end
    
