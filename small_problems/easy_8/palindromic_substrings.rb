=begin

Write a method that returns a list of all substrings of a string that are palindromic. 
That is, each substring must consist of the same sequence of characters forwards as it
does backwards. The return value should be arranged in the same sequence as the 
substrings appear in the string. Duplicate palindromes should be included multiple 
times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay 
attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" 
are. In addition, assume that single characters are not palindromes.

=end

def substrings_at_start(string)
  string_index = 0
  arr = []
  start = ''

  loop do
    start += string[string_index]
    arr << start
    string_index += 1
  break if string_index == string.size
  end

  arr
end


def substrings(string)
  revo = string.size
  sub_1 = []

    revo.times do 
      sub_1 << substrings_at_start(string)
      string = string.chars
      string.delete_at(0)
      string = string.join
    end

  sub_1.flatten
end

def palindromes(string)
  arr = []
  input_arr = substrings(string)

  input_arr.each do |string|
      if (string.size > 1 && string == string.reverse)
      arr << string
    end
  end

  arr
end

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
