def remove_dups(array)
  arr = []

  array.each { |el| arr << el unless arr.include?(el) }

  arr
end

def two_sum(array)
  zero_pairs = []
  array.each_with_index do |el1, i|
    j = i + 1
    while j < array.length
      el2 = array[j]
      zero_pairs << [i, j] if el1 + el2 == 0
      j += 1
    end
  end
  zero_pairs
end

def my_transpose(matrix)
  transposed = []
  matrix.each_with_index do |row, i|
    new_row = []
    row.each_index do |j|
      new_row << matrix[j][i]
    end
    transposed << new_row
  end
  transposed
end

def stock_picker(prices)
  best_days = []

  prices.each_with_index do |price, buy_date|
    if best_days.first.nil? || price > prices[best_days[0]]
      best_days[0] = buy_date
    end
    sell_date = buy_date + 1
    best_days << buy_date if best_days.empty?

    while sell_date < prices.length
      if best_days.length < 2 && prices[sell_date] > price
        best_days << sell_date
      elsif prices[sell_date] > prices[best_days.last]
        best_days[1] = sell_date
      end

      sell_date += 1
    end
  end

  best_days
end
