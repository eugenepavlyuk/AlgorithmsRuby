require_relative('../../PrimeNumber/prime_number.rb')

def test7IsPrimeNumber

  result = PrimeNumber.isNumberPrime(7)

  if result == true
    puts 'Test is correct, 7 is prime number'
  else
    puts 'Test is not correct, 7 should be prime number'
  end

end

def test9IsNotPrimeNumber

  result = PrimeNumber.isNumberPrime(9)

  if result == false
    puts 'Test is correct, 9 is not prime number'
  else
    puts 'Test is not correct, 9 should be not prime number'
  end

end

def test17IsPrimeNumber

  result = PrimeNumber.isNumberPrime(17)

  if result == true
    puts 'Test is correct, 17 is prime number'
  else
    puts 'Test is not correct, 17 should be prime number'
  end

end

def printAllPrimesBetween1And100

  PrimeNumber.primeNumbersTill(100)

end

def runAllTests
  test7IsPrimeNumber
  test9IsNotPrimeNumber
  test17IsPrimeNumber
  printAllPrimesBetween1And100

end

runAllTests
