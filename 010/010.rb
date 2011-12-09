require 'mathn'

def prime_summer(n)
	sum = 0
	Prime.instance.each(n) do |prime|
		sum += prime
	end
	puts sum
end

prime_summer(2000000)