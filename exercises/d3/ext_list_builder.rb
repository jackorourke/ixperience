puts "Welcome to list builder++!"
list = []
stop = false;

while (stop == false)
	puts "What can I do for you?"
	input = gets.strip
	if (input == "quit")
		stop == true
		puts "Bye!"
		break
	end
	if (input[0] == "a")
		item = input.strip[4,input.length]
		list.push(item)
		puts "Added! Your list is: "
		puts list
	elsif (input[0] == "r")
		item = input.strip[7,input.length]
		list.delete(item)
		puts "Removed! Your list is: "
		puts list
	end
end
