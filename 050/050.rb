# found at http://rosettacode.org/wiki/Factors_of_an_integer#Ruby
require 'mathn'

count, sum = 0, 0
primes = Array.new

while sum < 1000000
	
		sum = 0 
		if count.prime?
			primes << count
			sum = primes.inject(:+)
			if sum.prime?
				p sum
			
			end
		end
		count += 1
	
end