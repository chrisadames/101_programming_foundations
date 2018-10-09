=begin

Given a string that consists of some words and an assortment of 
non-alphabetic characters, write a method that returns that string with 
all of the non-alphabetic characters replaced by spaces. If one or more 
non-alphabetic characters occur in a row, you should only have one space 
in the result (the result should never have consecutive spaces).

Examples:

cleanup("---what's my +*& line?") == ' what s my line '

=end


def valid_input(letter)
 ("a".."z").include?(letter) || ("A".."Z").include?(letter)
end

def cleanup(string)
  output_string = ''
  string_arr = string.split
    
    string_arr.each do |word|
        output_word = ''
        previous_letter = ''

          word.each_char do |letter|
            if valid_input(letter)
              output_word << letter
            elsif valid_input(previous_letter)
              output_word << ' '
            elsif (!valid_input(letter) && (previous_letter == ''))
              output_word << ' '
            end
            previous_letter = letter
          end

        if ((output_word[-1] != ' ') && (output_string[-1] != ' '))
          output_string << output_word + ' '
        else
          output_string << output_word
        end
    end
  
  output_string
end

cleanup("---what's my +*& line?") == ' what s my line '




