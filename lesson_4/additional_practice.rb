

# Practice Problem 1
# Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# Turn this array into a hash where the names are the keys and the values 
# are the positions in the array.

flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

puts flintstones_hash
puts

# Practice Problem 2
# Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total_ages = 0
ages.each { |_,age| total_ages += age }
puts total_ages


# Practice Problem 3
# In the age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# throw out the really old people (age 100 or older).

ages.keep_if { |_, age| age < 100 }


# Practice Problem 4
# Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.values.min

# Practice Problem 5
# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Find the index of the first name that starts with "Be"
flintstones.index { |name| name[0, 2] == "Be" }


# Practice Problem 6
# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! do |name|
  name[0, 3]
end


# Practice Problem 7
# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

# Practice Problem 8
# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
# first one...
# 1
# 3

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# second one...
# 1
# 2


# Practice Problem 9
# As we have seen previously we can use some built-in string methods to change the case of a string. 
# A notably missing method is something provided in Rails, but not in Ruby itself...titleize. This method in Ruby on Rails 
# creates a string that has each word capitalized as it would be in a title. For example, the string:

words = "the flintstones rock"
# would be:

words = "The Flintstones Rock"
# Write your own version of the rails titleize implementation.
words.split.map { |word| word.capitalize }.join(' ')


# Practice Problem 10
# Given the munsters hash below

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior). Your solution should produce the hash below

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end
# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.

