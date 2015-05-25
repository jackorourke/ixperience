puts "Hey bru. Let's compute some quadform.\nGive me an A:"
a = gets.chomp.to_i
puts "Give me a B:"
b = gets.chomp.to_i
puts "Give me a C:"
c = gets.chomp.to_i
discriminant = b*b - 4*a*c
if discriminant < 0 
	puts "Roots are complex!"
else
	x1 = (-b + Math.sqrt(discriminant)) / (2*a)
	x2 = (-b - Math.sqrt(discriminant)) / (2*a)
	puts "beep computing boop boop...\nx is either"
	puts "#{x1} or #{x2}"
	puts "Goodbye!"
end