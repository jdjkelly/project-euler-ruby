# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

x = 600851475143

def generate(n)
  return [] if n == 1
  factor = (2..n).find {|x| n % x == 0} 
  [factor] << generate(n / factor)
  p factor
end

generate(x)

# Help from: http://www.benrady.com/2009/11/katarubyprime-factors.html