# frozen_string_literal: false

class PrimeNumber

  def self.isNumberPrime(n)

    if n < 1
      return false
    else

      x = 2

      while x <= n / 2

        if n % x == 0
          return false
        end

        x += 1

      end

    end

    return true
    
  end

  def self.primeNumbersTill(n)

    for i in (1..n)

      result = isNumberPrime(i)

      if result == true
        puts "#{i} is prime number"
      end

    end

  end

end
