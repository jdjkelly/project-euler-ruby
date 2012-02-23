require 'mathn'

big_num = 0
# check to see if it's pandigital
class Integer	
	def pandigital?()
		a1 = self.to_s.split(//)
		a2 = Array.new
		a1.each do |i|
			if a2.include?(i)
				return false
			else
				a2 << i
			end
		end
	end
end

(1023456789..9876543210).each do |i|
	if i.pandigital?
		if i.prime?
			if i > big_num
				big_num = i
				p big_num
			end
		end
	end
end

p big_num