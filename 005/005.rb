# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def smallest(n)
	divisible = false
	start = 1

	until divisible == true
		(1...n).each do |i|
			if start % i != 0
				divisible = false
			else
				divisible = true
			end 
			if divisible == false
				break
			end
		end
		start += 1
	end
	p start - 1
end

smallest(20)

# After finishing, I was amazed and humbled by this solutiON:

# require 'rational'
# num = (1..20).inject(1) { |result, n| result.lcm n }
# puts "Smallest evenly divisible number is #{ num }."