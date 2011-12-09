def sum_of_squares(n)
	sum = 0
	(1..n).each do |f|
		f *= f
		sum += f 
	end
	return sum
end

def square_of_sum(n)
	sum = 0
	(1..n).each do |f|
		sum += f
	end
	sum *= sum
end

result = square_of_sum(100) - sum_of_squares(100)
puts result 