def stock_picker(array_of_stock_prices)
  last_profit = 0
  new_profit = 0

  best_day_to_buy = 0
  best_day_to_sell = 0

  i = 0
  while i <= array_of_stock_prices.length - 1

    j = i + 1
    while j <= array_of_stock_prices.length - 1
      new_profit = array_of_stock_prices[j] - array_of_stock_prices[i]

      if new_profit > last_profit
        last_profit = new_profit

        best_day_to_buy = i
        best_day_to_sell = j
      end

      j += 1
    end

    i += 1
  end

  [best_day_to_buy, best_day_to_sell]
end

pp stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
pp stock_picker([10, 1, 6, 8, 15, 9, 6, 3, 17])
