=begin

Write a method that takes a string, and then returns a hash that contains 3 
entries: one represents the number of characters in the string that are 
lowercase letters, one the number of characters that are uppercase letters, and 
one the number of characters that are neither.

input
  - string

return
  - hash
    - contains 3 entries
      - 1: represents the number of chars in the string that are lowercase
      - 2: num of chars uppercase letters
      - 3: num of chars that are not a..z or A..Z

do

  - break out each element of string
  - check against a..z, true: 'count_lowercase'
      - A..Z: 'count_uppercase'
      - else: 'count_other'
  - hash keys: variables count..
      - values: num
=end

def letter_case_count(string)
  my_hsh = {:lowercase => 0, :uppercase => 0, :neither => 0}
  arr = string.chars
  count = 0
    
    arr.size.times do
      if ("a".."z").include?(arr[count])
        my_hsh[:lowercase] += 1
      elsif ("A".."Z").include?(arr[count])
        my_hsh[:uppercase] += 1
      else
        my_hsh[:neither] += 1
      end
      count += 1
    end

  my_hsh
end        

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
