#make variable
daily_values = [17,3,6,9,15,8,6,1,10]
#create method

    #create loop that goes through Array to find the greatest difference 
      #create retainer value for highest difference
      highest_earnings = 0
        #left value must be less than the right value
        i = 0
    while i < (daily_values.length - 1) do 
      delta = (daily_values[i+1] - daily_values[i]) 
      #left value must be less than the right value
      if delta < 0
        #DO NOTHING
      else
        #take the array at it's current value. Subtract the following values until there is a difference
        j = (i + 1)
        while j < (daily_values.length) do
          delta_2 = daily_values[j] - daily_values[i]
          if delta_2 <= 0
            #DO NOTHING
          else
            if delta_2 > highest_earnings
              highest_earnings = delta_2
            else 
              #DO NOTHING
            end
          end
          puts "#{daily_values[i]} and #{highest_earnings}"
          j += 1
        end
      end
        #case for first value being the highest 
        
      i += 1
    end
        #case for first value being the highest 

    #return pair of lowest and highest days with the greatest difference