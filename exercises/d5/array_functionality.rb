class Array
	def self.naturals(n)
		array = []
		for i in 1..n
			array << i
		end
		array
	end

	def increment
		self.each do |element|
			element += 1
		end
	end

	def increment_by_n(n) # What are we supposed to return?
		n.times do
			self.increment
		end
	end
end

# Testing
array1 = [2,4,5]

#puts "#{Array.naturals(3)}"

puts "#{array1}"

#puts "#{array1.increment}"

array1.increment
puts "#{array1}"

=begin
puts "#{array1}"

array1.increment_by_n 6

puts "#{array1}"
=end

