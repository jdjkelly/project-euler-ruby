require 'mathn'

def primer(n)
	counter = 0
	i = 0

	until counter == n
		if i.prime?
			counter += 1
			puts i
		end
		i += 1 		
	end
	
end

primer(10001)