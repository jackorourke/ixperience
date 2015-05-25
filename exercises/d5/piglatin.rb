def piglatinify(string)
	if string[0].downcase == string[0]
		"#{string[1,string.length]}#{string[0]}ay"
	else
		"#{string[1].upcase}#{string[2,string.length]}#{string[0].downcase}ay"
	end
end

def piglatinify_sentence(string)
	result = string.split("").map do |word|
		piglatinify(word)
	end
	result.join
end


puts piglatinify_sentence("This is a sentence")
