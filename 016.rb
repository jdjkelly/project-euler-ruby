# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 21000?

def controller
	num = []
	strnum = (2**1000).to_s.split(//)
	
	strnum.each do |number|
		num << number.to_i
	end

	@result = num.inject(:+)
	return @result 
end

controller
puts "The result is #{@result}"