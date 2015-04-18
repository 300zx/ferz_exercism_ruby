class Prime

  def nth(n)
    raise ArgumentError, "Argument must be larger than 1" if n < 1
    primes = (1..999999).to_a
    result = []
    primes.each do |x|
      result << x if is_prime?(x)
      break if result.length == n  
    end
    result.last
  end

  def is_prime?(n)
    return n > 1 if n <= 3
    return false if n % 2 == 0 || n % 3 == 0

    i = 5
    while i * i <= n 
      return false if (n % i == 0 || n % (i + 2) == 0)
      i += 6
    end

    true  
  end
end
