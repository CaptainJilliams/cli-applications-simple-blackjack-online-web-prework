def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
n_one = deal_card
n_two = deal_card

sum_of_cards = n_one + n_two
display_card_total(sum_of_cards)

sum_of_cards
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input

  if user_input == "h"
    card_total += deal_card
  elsif user_input == "s"
    card_total
  else
    invalid_command
  end
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
