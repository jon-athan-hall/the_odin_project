def stock_picker(prices)
  best_pair = [0, 0]
  
  prices.each_index do |buy_day|
    # Build a subarray of all days after the buy_day.
    (buy_day + 1..prices.length - 1).each do |sell_day|
      if (prices[best_pair.last] - prices[best_pair.first]) < (prices[sell_day] - prices[buy_day])
        best_pair = [buy_day, sell_day]
      end
    end
  end

  best_pair
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
