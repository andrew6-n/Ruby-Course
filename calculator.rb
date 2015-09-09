def say(msg)
	puts "=> #{msg}"
end

def check_number(number)
  until number.to_f.to_s == number || number.to_i.to_s == number
    say "Please enter a valid number!"
      number = gets.chomp
  end
  
return number.to_f.to_s == number ? number.to_f : number.to_i
end


say "Whats the first number."
num1 = check_number (gets.chomp)


say "Choose your operation"
say "+ to add, - to subtract, * to mulitply, / to divide"
operator = gets.chomp

say "Whats the second number."
num2 = check_number  (gets.chomp)


if operator == '+'
	answer = num1.to_i + num2.to_i
elsif operator == '-'
	answer = num1.to_i - num2.to_i
elsif operator == '*' 
	answer = num1.to_i * num2.to_i
elsif operator == '/'
	answer = num1.to_f / num2.to_f
end

say "Answer is #{answer}"
	
	
