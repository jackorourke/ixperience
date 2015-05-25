puts "Welcome to container builder!"
container = {}
stop = false;

while (stop == false)
	puts "What can I do for you?"
	input = gets.strip
	if (input == "quit")
		stop == true
		puts "\nYour final container was: "
		puts container
		puts "\nBye!"
		break
	end
	if (input[0] == "a")
		key = input.strip[4,input.length]
		if container.has_key?(key)
			container[key] = container[key] + 1
		else
			container[key] = 1
		end
		puts "Added! Your container has: "
		puts container
	elsif (input[0] == "r")
		key = input.strip[7,input.length]
		if container.has_key?(key) && container[key] > 1
			container[key] = container[key] - 1
		elsif container.has_key?(key) && container[key] == 1
			container.delete(key)
		end
		puts "Removed! Your container has: "
		puts container

	end
end
