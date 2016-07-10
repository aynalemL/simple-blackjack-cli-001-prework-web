def welcome
  puts "Welcome to the Blackjack Table"

  # code #welcome here
end

def deal_card
  return Random.new.rand(1..11)
  # code #deal_card here
end

def display_card_total(x)
  puts "Your cards add up to #{x}"

  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  inputs =gets
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round()
 x = deal_card()
 y = deal_card()
 display_card_total(x+y)
 return x + y

  # code #initial_round here
end

def hit?(currentcardtotal)
    prompt_user()
    x= get_user_input()
    if x == "h"
  card_total = deal_card() + currentcardtotal
      return card_total
    elsif x == "s"
      return currentcardtotal
    else
      invalid_command
      return currentcardtotal
  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"

  # code invalid_command here
end
end

def runner
  welcome()
y= initial_round()
x = hit?(y)
display_card_total(x)
if x > 21
  end_game(x)
end
end
