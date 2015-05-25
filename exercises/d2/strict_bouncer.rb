puts "How old are you?"
age = gets.strip.to_i
if age >= 65
	puts "You're too old, grandpa!"
elsif age < 21
	puts "You're too young, kid!"
else
	puts "Welcome! Come on in!"
end
