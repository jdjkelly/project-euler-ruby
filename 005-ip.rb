# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def smallint(n)
	isdiv = false
	x = 1
	while isdiv == false
		for i in (1..n)
			if x % i == 0
				isdiv = true
				p i
			end
		end
		if isdiv == true
			break
		else 
			x += 1
		end
	end
end

smallint(20)