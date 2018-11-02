# frozen_string_literal: true

require 'minitest/autorun'

require_relative '../../PrimeNumber/prime_number.rb'

# rubocop:disable Naming/MethodName

class PrimeNumberTests < Minitest::Test

  def test_7IsPrimeNumber

    result = PrimeNumber.isNumberPrime(7)

    assert(result, '7 should be prime number')

  end

  def test_9IsNotPrimeNumber

    result = PrimeNumber.isNumberPrime(9)

    assert(!result, '9 is not prime number')

  end

  def test_17IsPrimeNumber

    result = PrimeNumber.isNumberPrime(17)

    assert(result, '17 is prime number')

  end

  def test_PrintAllPrimesBetween1And100

    PrimeNumber.primeNumbersTill(100)

  end

end

# rubocop:enable Naming/MethodName