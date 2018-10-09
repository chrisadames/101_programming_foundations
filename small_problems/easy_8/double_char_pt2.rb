=begin

Write a method that takes a string, and returns a new string in which every 
consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and 
whitespace should not be doubled.

=end

string = "Hello-World!"

def valid_char(char)
  vowels = ['a','e','i','o','u']
  upcase_vowels = ['A', 'E', 'I', 'O', 'U']
  if ((('a'..'z').include?(char) || ('A'..'Z').include?(char)) && ((!vowels.include?(char) && !upcase_vowels.include?(char))))
    true
  else
    false
  end
end


def double_consonants(string)
  string = string.chars

  output_string = ''

  string.each do |char|
    if valid_char(char)
      output_string << char << char
    else
      output_string << char
    end
  end

  output_string
end

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""
