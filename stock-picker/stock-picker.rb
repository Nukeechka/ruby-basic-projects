def stock_picker(prices)
  min_day = 0;
  max_day = 0;
  diff = 0;
  prices.each_with_index do |low_price, low_index|
    prices.each_with_index do |high_price, high_index|
      if low_price < high_price
        temp = high_price - low_price
        if(temp > diff && low_index < high_index)
          diff = temp
          min_day = low_index
          max_day = high_index
        end
      end
    end
  end
  return min_day, max_day
end

p stock_picker([17,3,6,9,15,8,6,10,1])