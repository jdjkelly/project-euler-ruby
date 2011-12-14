# found at http://rosettacode.org/wiki/Factors_of_an_integer#Ruby

count, factor_count, triangle = 0,0,0

until factor_count >= 500
	factor_count = 0
	limit = triangle / 2
	(1..limit).each do |n|
		if (triangle % n) == 0
			factor_count += 1
		end  
	end
	count += 1
	triangle += count 
end

puts triangle