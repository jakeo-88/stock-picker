#make variable
daily_values = [17,3,6,9,15,8,6,1,10]
#create method
def stock_picker daily_values
    #create loop that goes through Array to find the greatest difference 
      #create retainer value for highest difference
      highest_earnings = 0
      #add variable that displays the elements in the daily_values array for the buying and selling days
      buy_lowest_sell_highest = []  
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
              buy_lowest_sell_highest = [i, j]
            else 
              #DO NOTHING
            end
          end
          j += 1
        end
      end  
      i += 1
    end 
    #return pair of lowest and highest days with the greatest difference
    print buy_lowest_sell_highest
end