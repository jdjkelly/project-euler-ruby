# Tn=n(n+1)/2
# Pn=n(3n1)/2
# Hn=n(2n1)

class Integer	
	def triangulate()
		0.5*self*(self+1) 
	end

	def pentagonate()
		0.5*self*(self*3-1) 
	end

	def hexagonate()
		i = self*(self*2-1) 
	end
end

found = false
count = 40756
hex, pent, tri = 0,0,0

until found == true do
	hex = count.hexagonate
	while pent < hex
	count += 1
end