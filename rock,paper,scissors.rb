
CHOICES = {'P' => 'Paper', 'R' => 'Rock', 'S' => 'Scissors'}
puts "Welcome to Rock, Paper Scissors!"

def display_winning_message(winning_choice)
	case winning_choice
	when 'P'
		puts "Paper wraps Rock!"
	when 'R'
		puts "Rock smashes Scissors!"
  when 'S'
		puts "Scissors cuts Paper!"
	end
end

loop do

begin 
  puts "Pick one: (P,R,S):"
  player_choice = gets.chomp.upcase
end until CHOICES.keys.include?(player_choice)

computer_choice = CHOICES.keys.sample

if player_choice == computer_choice
  puts "Its a tie!"
elsif (player_choice == 'P' && computer_choice == 'R') || (player_choice == 'R' && computer_choice == 'S')|| (player_choice == 'S' && computer_choice == 'P')
  display_winning_message(player_choice)
  puts "You won!"
else
  display_winning_message(computer_choice)
  puts "Computer won!"
end
  puts "Play again? (Y/N)"
  break if gets.chomp.upcase != 'Y'
  
end 


puts "Good bye!"

  
