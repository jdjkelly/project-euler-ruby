class Sequence

	def initialize(n)
		@count = 0
		@val = n
		@seq = [n]
		evenorodd(@val)
	end

	def evenorodd(n)
		if (n % 2 == 0)
			even(n)
		else
			odd(n)
		end
	end

	def even(n)
		n = n/2
		@count += 1
		@val = n
		seq << n
	end

	def odd(n)
		n = 3*n + 1
		@count += 1
		@val = n
		seq << n
	end

	def count
		return @count
	end

	def seq
		return @seq
	end

	def val
		return @val
	end

end

max = 0
(1..1000000).each do |n|
	sequence = Sequence.new(n)
	until sequence.val == 1
		sequence.evenorodd(sequence.val)
	end
	if sequence.seq.length > max
		max = sequence.seq.length
		@array = sequence.seq
	end
end

p @array[0]