=begin

Modify the method from the previous exercise so it ignores non-alphabetic 
characters when determining whether it should uppercase or lowercase each 
letter. The non-alphabetic characters should still be included in the return 
value; they just don't count when toggling the desired case.

=end

def valid_char(element)
  ('a'..'z').include?(element) || ('A'..'Z').include?(element)
end

def staggered_case(string)
  arr = string.chars

  previous_index = 'a'

  arr.each do |element|
      if valid_char(element)

          if ('a'..'z').include?(previous_index)
            element.upcase!
              
          elsif ('A'..'Z').include?(previous_index)
            element.downcase!
          end
      previous_index = element
      end
    end
  arr.join  
end


staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
