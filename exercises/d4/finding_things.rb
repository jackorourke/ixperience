# finding_things.rb

# Your code here
def index_of(str, letter)
  for i in 0...str.length
    if str[i] == letter
      i
    else
      -1
    end
  end
  
end


def find_by_name(array_of_hashes, str)
  array_of_hashes.each do |person|
    if person[:name] == str
      return person
    end
  end
  "Sorry! No one in the given array has that name!"
end


def filter_by_name(array_of_hashes, str)
  result = array_of_hashes.map do |person|
    if person[:name] == str
      person
    end
  end
end

array = [{:id=>2,:name=>"ski"}, {:id=>4,:name=>"ski"}]

#puts index_of("This", "h")


=begin
index_of("abcdefghijklmnop", "m")
# => 12
index_of("abcdefghijklmnop", "z")
# => -1
=end
people = [
  {
    :id => 1,
    :name => "bru"
  },
  {
    :id => 2,
    :name => "ski"
  },
  {
    :id => 3,
    :name => "brunette"
  },
  {
    :id => 4,
    :name => "ski"
  }
]

puts find_by_name(people, "ski")
# => {:id=>2,:name=>"ski"}
puts find_by_name(people, "kitten!")
# => nil

puts "\n\n"
=end
filter_by_name(people, "ski")
# => [{:id=>2,:name=>"ski"}, {:id=>4,:name=>"ski"}]
puts filter_by_name(people, "bru")
# => [{:id=>1,:name=>"bru"}] (Note this is still an array)
puts filter_by_name(people, "puppy!!!")
# => []