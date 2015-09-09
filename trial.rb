a = [1,2,3,4,5,6]

user_input = gets.chomp

if user_input == 'yes'
  a.each {|i| puts "I got #{i}" }
end