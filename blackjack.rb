# #display player's two cards
# #ask them bust or stay
# #if greater then 21 puts you lost



# card_values = [1,2,3,4,5,6,7,8,9,10,11]
# card_suits = ['diamonds','clubs','hearts','spades','jack','queen','king',]

# card_1 = card_values.sample.to_s
# card_2 = card_values.sample.to_s
# card_3 = card_values.sample.to_s
# card_4 = card_values.sample.to_s
# card_5 = card_values.sample.to_s

 
# first_card = card_1
# second_card = card_2
# third_card = card_3
# fourth_card = card_4
# fifth_card = card_5

# puts " Your first card is " + card_1
# puts " Your second card is " + card_2  


# loop do

# puts "Stay or Hit?"
# user_input = gets.chomp.downcase

# if user_input == 'stay'
# break
# end

# if first_card.to_i + second_card.to_i > 21
#       puts "Bust!"
#       break
#   if first_card.to_i + second_card.to_i == 21
#     puts "You Won!"
#     break
#   end
# end




# if user_input == 'hit'
# 	puts " Your third card is " + third_card  
#     if first_card.to_i + second_card.to_i + third_card.to_i > 21
#       puts "Bust!"
#       break
#      if  first_card.to_i + second_card.to_i + third_card.to_i == 21
#       puts "You Won!"
#       break
#     end
#     end
# end

# puts "Stay or Hit?"
# user_input = gets.chomp.downcase

# if user_input == 'hit'
#   puts " Your fourth card is " + fourth_card  
#     if first_card.to_i + second_card.to_i + third_card.to_i + fourth_card.to_i > 21
#       puts "Bust!"
#       break
#       if first_card.to_i + second_card.to_i + third_card.to_i + fourth_card.to_i == 21
#         puts "You Won!"
#       break
#     end
#     end
# end

# puts "Stay or Hit?"
# user_input = gets.chomp.downcase

# if user_input == 'hit'
#   puts " Your fifth card is " + fifth_card  
#     if first_card.to_i + second_card.to_i + third_card.to_i + fourth_card.to_i + fifth_card.to_i > 21
#       puts "Bust!"
#       break
#       if first_card.to_i + second_card.to_i + third_card.to_i + fourth_card.to_i + fifth_card.to_i == 21
#     end
#   end
# end

# end




# Dcard_1 = card_values.sample.to_s
# Dcard_2 = card_values.sample.to_s
# Dcard_3 = card_values.sample.to_s
# Dcard_4 = card_values.sample.to_s
# Dcard_5 = card_values.sample.to_s

# Dealer_card1 = Dcard_1
# Dealer_card2 = Dcard_2 

# if Dealer_card1 + Dealer_card2 < 17
#   puts Dealer_card3 = Dcard_3
#   if Dealer_card1 + Dealer_card2 == 21
#     puts "You Lost!"
#   end
# end
#   if Dealer_card1 + Dealer_card2 + Dealer_card3 < 17
#     puts Dealer_card4 = Dcard_4
#     if Dealer_card1 + Dealer_card2 + Dealer_card3 == 21
#       puts "You Lost!"
#   end
# end
#     if Dealer_card1 + Dealer_card2 + Dealer_card3 + Dealer_card4 < 17
#       puts Dealer_card5 = Dealer_card5
#       if Dealer_card1 + Dealer_card2 + Dealer_card3 + Dealer_card4 == 21
#         puts "You Lost!"
#     end
# end

def calculate_total(cards)
  arr = cards.map{|e| e [1] }

  total = 0
  arr.each do |value|
    if value == "A"
      total += 11 
    elsif value.to_i == 0 
      total += 10
    else 
      total += value.to_i
  end
end

arr.select {|e| e == "A"}.count.times do
  total -= 10 if total > 21
end

  total
end

puts "Welcome to Blackjack!"

suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades']
cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'] 

deck = suits.product(cards)
deck.shuffle!

mycards = []
dealercards = []

mycards << deck.pop
dealercards << deck.pop
mycards << deck.pop
dealercards << deck.pop

dealertotal = calculate_total(dealercards)
mytotal = calculate_total(mycards)

puts "Dealer has: #{dealercards[0]} and #{dealercards[1]}, for a total of #{dealertotal}"
puts "You have: #{mycards[0]} and #{mycards[1]}, for a total of #{mytotal}"
puts ""



if mytotal == 21
  puts "Congratulations, you hit blackjack! You Win!"
  exit
end

while mytotal < 21
  puts "What do you want to do? Hit or stay?"
  hit_or_stay = gets.chomp.downcase

  if !['hit', 'stay'].include?(hit_or_stay)
    puts "Error: you must choose hit or stay"
    next
end

if hit_or_stay == 'stay'
  puts "You choose to stay."
  break
end

new_card = deck.pop
puts "Dealing card to player #{new_card}"
mycards << new_card
mytotal = calculate_total(mycards)
puts "Your total is now: #{mytotal}"

if mytotal == 21 
  puts "Congratulations, you hit Blackjack! You Win!"
  exit
elsif mytotal > 21 
  puts "Busted!"
  exit
  end
end

if dealertotal == 21
  puts "Dealer hit Blackjack, you Lose!"
  exit
end

while dealertotal < 17
  new_card = deck.pop
  puts "Dealing new card for dealer: #{new_card}"
  dealercards << new_card
  dealertotal = calculate_total(dealercards)
  puts "Dealer total is now: #{dealertotal}"

  if dealertotal == 21 
    puts "Dealer hit Blackjack, you Lose!"
    exit
  elsif dealertotal > 21 
    puts "Congratulations, dealer busted! You win!"
    exit
  end
end

puts "Dealer cards: "
dealercards.each do |card|
  puts "=> #{card}"
end
puts ""

if dealertotal > mytotal
  puts "Dealer Wins!"
elsif dealertotal < mytotal
  puts "You Win!"
  puts "Your total is #{mytotal}"
else 
  puts "Its a Tie!"
end
exitS
  




  





