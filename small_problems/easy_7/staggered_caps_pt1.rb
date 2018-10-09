=begin

Write a method that takes a String as an argument, and returns a new String that 
contains the original value using a staggered capitalization scheme in which every 
other character is capitalized, and the remaining characters are lowercase. Charact
ers that are not letters should not be changed, but count as characters when swit
ching between upper and lowercase.

=end

def staggered_case(string)
  arr = string.chars

  arr_index_up = 0
  arr_index_down = 1

    loop do
        if ('a'..'z').include?(arr[arr_index_up])
          arr[arr_index_up].upcase!
        end
      arr_index_up += 2

        if ('A'..'Z').include?(arr[arr_index_down])
            arr[arr_index_down].downcase!
        end
      arr_index_down += 2
      break if arr_index_up >= arr.size
    end

  arr.join
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
