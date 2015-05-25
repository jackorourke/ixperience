puts "Welcome to list builder!"
list = []
puts list
while true
	puts "What can I add?"
	item = gets.strip
	puts list.push(item)
	puts "Added! Your list is:"
	puts list
end