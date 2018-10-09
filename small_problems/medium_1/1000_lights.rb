=begin


You have a bank of switches before you, numbered from 1 to n. Each switch is 
connected to exactly one light that is initially off. You walk down the row of 
switches and toggle every one of them. You go back to the beginning, and on this 
second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go 
back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat 
this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns 
an Array that identifies which lights are on after n repetitions.

The result is that 2 lights are left on, lights 1 and 4. The return value is 
[1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is 
[1, 4, 9].


=end

def toggle_lights(num)

  hsh = {}

  count = 1
  round = 2

  loop do
    hsh[count] = "on"
    count += 1
    break if count > num
  end

  loop do 
    count = 2   
      loop do 
        if hsh[count] == 'on'
          hsh[count] = 'off'
        else
          hsh[count] = 'on'
        end

        count += 2
        break if count > num
      end
      round += 1
    break
  end

  loop do 
    count = round
      loop do 
        if hsh[count] == 'on'
          hsh[count] = 'off'
        else
          hsh[count] = 'on'
        end

        count += round
        break if count >= num
      end
    
    round += 1
    hsh[num] = 'off'
    break if round > num
  end

  output_arr = []

  hsh.each do |k,v|
    if v == 'on'
      output_arr << k
    end
  end

  output_arr
end

toggle_lights(1000)
