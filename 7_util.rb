require '3_util'
require '5_util'

def find_next_prime n
   ((n+1)..(1.0/0.0)).find_first { |x| prime? x }
end

def find_prime n
  primes = [2]
  until primes.size == n
    primes << find_next_prime(primes[-1])
  end
  primes[n-1]
end








