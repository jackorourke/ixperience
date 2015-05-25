points = 0
puts "Welcome to Jack's mini quiz!"
puts "Q1: What is my last name?"
answer1 = gets.strip
if answer1 == "O'Rourke"
	points += 1
	puts "Correct!\nYou have #{points} points" unless points == 1
	puts "Correct!\nYou have #{points} point" if points == 1
elsif answer1 == "ORourke"
	puts "So close! Its O'Rourke, with an apostrophe."
	puts "You have #{points} points" unless points == 1
	puts "You have #{points} point" if points == 1	
else
	puts "Wrong!"
	puts "You have #{points} points" unless points == 1
	puts "You have #{points} point" if points == 1
end
puts "Q2: How many siblings do I have?"
answer2 = gets.strip.to_i
if answer2 == 3
	points += 1
	puts "Correct!\nYou have #{points} points" unless points == 1
	puts "Correct!\nYou have #{points} point" if points == 1
else
	puts "Wrong! I have 3 siblings"
	puts "You have #{points} points" unless points == 1
	puts "You have #{points} point" if points == 1
end
puts "Q3: What state am I from?"
answer3 = gets.strip
if answer3 == "CT" || answer3 == "Connecticut"
	points += 1
	puts "Correct!\nYou have #{points} points" unless points == 1
	puts "Correct!\nYou have #{points} point" if points == 1
else
	puts "Wrong! I was born in Connecticut and have lived there my whole life"
	puts "You have #{points} points" unless points == 1
	puts "You have #{points} point" if points == 1
end
puts "Q4: Which college do I attend?"
answer4 = gets.strip
if answer4 == "UVA" || answer4 == "UVa" || answer4 == "University of Virginia"
	points += 1
	puts "Correct!\nYou have #{points} points" unless points == 1
	puts "Correct!\nYou have #{points} point" if points == 1
else
	puts "Wrong! I attend the University of Virginia"
	puts "You have #{points} points" unless points == 1
	puts "You have #{points} point" if points == 1
end
puts "Thanks for playing! You got #{points} out of 4 questions correct."