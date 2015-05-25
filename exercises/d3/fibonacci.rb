# 1 2 3 4 5 6 7  8  9 
# 1 1 2 3 5 8 13 21 34

puts "Enter a number: "
input = gets.strip.to_i

if input == 1 || input == 2
	result = 1
end
if input > 2
	last = 1
	back = 1
	for i in 2...input
		result = last + back
		back = last
		last = result
	end
end
puts "Fibonacci at #{input}: #{result}"