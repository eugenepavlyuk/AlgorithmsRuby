# frozen_string_literal: true

# Implement a function that gets the minimal number of coins with values v1, v2, ..., vn, to make change 
# for an amount of money with value t. There are an infinite number of coins for each value vi.
# For example, the minimum number of coins to make change for 15 out of a set of coins with values 1, 3, 9, 10 is 3. 
# We can choose two coins with value 3 and a coin with value 9. The number of coins for other choices should be 
# greater than 3.

class MinNumberOfCoins

  def self.numberOfCoinsToMakeChangeFrom(amount, coins, number, min_number)

    if amount < 0
      return min_number
    end

    if amount == 0
      if number < min_number 
        min_number = number
      end

      return min_number
    end

    if number + 1 >= min_number
      return min_number
    end

    for coin in coins do

      rest_amount = amount - coin
      min_number = numberOfCoinsToMakeChangeFrom(rest_amount, coins, number + 1, min_number)

    end

    return min_number

  end

  def self.minNumberOfCoinsToMakeChangeFrom(amount, coins)

    return numberOfCoinsToMakeChangeFrom(amount, coins, 0, 1000)

  end

end