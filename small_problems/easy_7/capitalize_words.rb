=begin

Write a method that takes a single String argument and returns a new string 
that contains the original value of the argument with the first character of 
every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

=end


def word_cap(string)
  arr = string.chars
  count = 0

    loop do
      if (('a'..'z').include?(arr[count]) && (count == 0))
        arr[count].upcase!
      elsif (('a'..'z').include?(arr[count]) && (arr[count - 1] == ' '))
        arr[count].upcase!
      else
        arr[count].downcase!
      end
        count += 1
        break if count == arr.size
    end

  arr.join
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
