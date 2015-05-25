engines = ["Google", "Bing", "Ask Jeeves"]
array = engines.map do |e|
  if e == "Google"
    "OK"
  elsif e == "Bing"
    "Bad!"
  else
    "What is that?"
  end
end

puts array