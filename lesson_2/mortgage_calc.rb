#  You'll need three pieces of information:

 # the loan amount
 # the Annual Percentage Rate (APR)
#  the loan duration
#  From the above, you'll need to calculate the following two things:

# monthly interest rate
# loan duration in months

# m = p * (j / (1 - (1 + j)**(-n)))

# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

# Figure out what format your inputs need to be in. For example, should the interest rate be expressed as 5 or .05, if you mean 5% interest?
# If you're working with Annual Percentage Rate (APR), you'll need to convert that to a monthly interest rate.
# Be careful about the loan duration -- are you working with months or years? Choose variable names carefully to assist in remembering.

# casual 
# get input from user about loan amount requesting
# get input from user on duration of loan, 15 20 or 30 yr
# get input from user on interest rate
# determine the interest rate to use and convert to monthly
# calculate the monthly payment and out put to user
# ask if they want another calculation

# formal

# START
# GET: input from user mort amt, yrs, interest rate
# SET: mortamt, loanyrs, interest_rt, out: monthly_pymt
# READ: mort amt: integer, yrs: integer, int rate: float, 
# IF/ELSE: if input doesnt match format - error code and loop, else continue
# PRINT: puts "your monthly payment will be #{}" do you want to do another calc?
# END:

def prompt(x)
  puts "=> #{x}"
end

def valid_number?(num)
  ((num.to_i.to_s != num || num.to_i <= 0) || num.empty?)
end

prompt 'Welcome to the mortgage calculator'

loop do
  prompt 'Please enter the mortgage amount: (Example: 1234567 for $1,234,567)'

  mort_amt = ''
  loop do
    mort_amt = gets.chomp

    if valid_number?(mort_amt)
      prompt 'ERROR: Please enter the mortgage amount: (Example: 1234567 for
      $1,234,567)'
    else
      break
    end
  end

  prompt 'Please enter the length on your loan in years: (Example: 15, 20,
  30 etc.)'

  loan_yrs = ''
  loop do
    loan_yrs = gets.chomp

    if valid_number?(loan_yrs)
      prompt 'ERROR: Please enter the length on your loan in years:
      (Example: 15, 20, 30 etc.)'
    else
      break
    end
  end

  prompt 'Please enter the interest rate: (Example: 2, 3.75 etc)'

  int_rate = ''
  loop do
    int_rate = gets.chomp.to_f

    if int_rate <= 0
      prompt 'ERROR: Please enter the interest rate: (Example: 2, 3.75 etc)'
    else
      break
    end
  end

  mth_int = ((int_rate.to_f / 100) / 12)
  mth_ln = loan_yrs.to_f * 12
  m = mort_amt.to_f * (mth_int / (1 - (1 + mth_int)**-mth_ln))
  finalpayment = (m * 100).round / 100.0 # => $790.79

  prompt "Your monthly payment will be: $#{finalpayment}"

  prompt 'Would you like to perform another calculation? (Y or N)'

  anothercalc = gets.chomp.downcase
  break if anothercalc == "n"
end

prompt "Thank you for using our Mortgage Calculator!"

#  Where did that format method come from?
#  Note how we have to be very careful about converting inputs to integers or floats.
#  This "$#{format('%02.2f', monthly_payment)}" is really hard to read, what's happening? Hint: study the Kernel#format documentation here.
#  What does the code look like with the optional parentheses removed? Can you still recognize it?
