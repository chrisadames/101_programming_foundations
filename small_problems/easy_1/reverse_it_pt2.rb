=begin
  Write a method that takes one argument, a string containing one or more words, and returns the given string 
  with all five or more letter words reversed. Each string will consist of only letters and spaces. Spaces 
  should be included only when more than one word is present.

  Examples:

  puts reverse_words('Professional')          # => lanoisseforP
  puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
  puts reverse_words('Launch School')         # => hcnuaL loohcS
=end

def reverse_words(param_str) 
  str = ''
  param_str.split(/ /).each do |x|
    if x.size > 4
      str << x.reverse + ' '
    else
      str << x + ' '
    end
  end
  str.to_s
end



  puts reverse_words('Professional')          
  puts reverse_words('Walk around the block') 
  puts reverse_words('Launch School')         

