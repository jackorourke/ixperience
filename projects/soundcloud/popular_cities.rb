require 'restclient'


city_counts = {}

for i in 0..15
	rest_data = RestClient.get("http://api.soundcloud.com/users.json?client_id=YOUR_CLIENT_ID&limit=1000&offset=#{i*1000}")
	user_data = JSON.load rest_data

	user_data.each do |account|
		city = account['city']
		if city_counts.has_key?(city)
			city_counts[city] += 1
		else
			city_counts[city] = 1
		end
	end

	city_counts.delete(nil)
	city_counts.delete("")


	puts city_counts

end 

max = 0
popular = ""
city_counts.each do |city, value|
	if value != nil && value > max
		max = value
		popular = city
	end
end

puts city_counts.keys.length

puts "\n\nCity with the most users is #{popular} with #{max} users\n\n"

