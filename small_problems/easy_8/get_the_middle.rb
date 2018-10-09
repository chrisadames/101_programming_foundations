=begin

Write a method that takes a non-empty string argument, and returns the middle 
character or characters of the argument. If the argument has an odd length, you 
should return exactly one character. If the argument has an even length, you 
should return exactly two characters.


=end

def center_of(string)
  string = string.chars
  
  if string.size.odd?
    string[(string.size / 2)]
  else
    string[(string.size / 2) - 1] + string[(string.size / 2)]
  end
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
