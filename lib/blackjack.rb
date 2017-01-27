def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_sum)
  puts "Your cards add up to #{card_sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_sum)
  if card_sum>21
    puts "Sorry, you hit #{card_sum}. Thanks for playing!"
  end
end

def initial_round
  card_sum = deal_card+deal_card
  display_card_total(card_sum)
  card_sum
end

def hit?(card_sum)
  prompt_user
  action=get_user_input
  if action == "h"
    card_sum+=deal_card
  end
  card_sum
end

def invalid_command
  if action != "h" || "s"
    puts "Please enter a valid command"
    prompt_user
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
card_sum=0
  until card_sum>21
  welcome
  card_sum=initial_round
  card_sum=hit?(card_sum)
  display_card_total(card_sum)
  end
end_game(card_sum)
end
