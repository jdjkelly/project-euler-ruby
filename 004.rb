# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

# Find the largest palindrome made from the product of two 3-digit numbers.


set = [] 
999.times do |x|
	999.times do |y|
		prod = x * y
		prod_reverse = prod.to_s.reverse
		if prod.to_s == prod_reverse
			set << prod
		end
	end
end
p set.sort