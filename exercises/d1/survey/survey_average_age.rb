puts "Hello!"
puts "How old are you?"
age = gets.chomp.to_i
puts "How old is your mom?"
mom_age = gets.chomp.to_i
puts "How old is your dad?"
dad_age = gets.chomp.to_i
average_age = (age + mom_age + dad_age) / 3.0
puts "Thanks for answering my creepy questions! The average age of your family is #{average_age} years old!"
puts "Goodbye!"