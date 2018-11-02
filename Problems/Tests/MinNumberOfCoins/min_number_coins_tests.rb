# frozen_string_literal: true

require 'minitest/autorun'

require_relative '../../MinNumberOfCoins/min_number_coins.rb'

# rubocop:disable Naming/MethodName

class MinNumberOfCoinsTests < Minitest::Test

  def test_minNumberOfCoinsToMakeChangeFrom15Is3

    amount = 15
    coins = [1, 3, 9, 10]
    number = MinNumberOfCoins.minNumberOfCoinsToMakeChangeFrom(amount, coins)
    assert_equal(3, number, 'Number of coins should be 3')

  end

end

# rubocop:enable Naming/MethodName