class Array
	def self.naturals(n)
		array = []
		for i in 1..n
			array << i
		end
		array
	end

	def increment
		result = self.map do |element|
			element += 1
		end
	end

	def increment_by_n(n) # What are we supposed to return?
		self.increment 
	end
end

# Testing
array1 = [2,4,8]

puts "#{Array.naturals(3)}"

puts "#{array1}"

puts "#{array1.increment}"

array1.increment_by_n 6

puts "#{array1}"

