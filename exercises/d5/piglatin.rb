def piglatinify(string)
	vowels = "aeiouAEIOU"
	if string[0].downcase == string[0]
		if !(vowels.include? string[0])
			"#{string[1,string.length]}#{string[0]}ay"
		else
			"#{string}way"
		end
	else
		if !(vowels.include? string[0])
			"#{string[1].upcase}#{string[2,string.length]}#{string[0].downcase}ay"
		else
			"#{string}way"
		end
	end
end

def piglatinify_sentence(string)
	result = string.split(" ").map do |word|
		piglatinify(word)
	end
	result.join(" ")
end


puts piglatinify_sentence("This is piglatin")
