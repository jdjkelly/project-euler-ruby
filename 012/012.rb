# found at http://rosettacode.org/wiki/Factors_of_an_integer#Ruby

class Integer
	def factors()
	    1.upto(Math.sqrt(self)).select {|i| (self % i).zero?}.inject([]) do |f, i| 
	      f << i
	      f << self/i unless i == self/i
	      f
	    end.sort
	end
	
	def triangulate() (1..self).inject(:+) end
end

triangle,count = 0,0

until count > 500
	count = triangle.triangulate.to_i.factors.count
	triangle += 1
end

p triangle.triangulate