require 'prime'

def find_next_prime n
   ((n+1)..(1.0/0.0)).find { |x| x.prime? }
end

def find_prime n
  primes = [2]
  until primes.size == n
    primes << find_next_prime(primes[-1])
  end
  primes[n-1]
end
