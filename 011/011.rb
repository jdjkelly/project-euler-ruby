require 'matrix'

starting_array = Array.new
data = File.open("data").each_line do |line|
	starting_array << line.split(/\s+/)
end
matrix = Matrix.rows(starting_array)

@sum = 0

def check(array)
	if array.inject(:*) > @sum
		@sum = array.inject(:*)
	end
end

i,j = 0,0
a1,a2,a3,a4 = Array.new, Array.new, Array.new, Array.new
until i >= 20
	until j >= 20
		4.times do |index| 
			#down
			k = j + index + 1
			a1 << matrix[i,k].to_i

			#sidways
			k = i + index + 1
			a2 << matrix[k,j].to_i

			#diagonal descending
			k = i + index + 1
			l = j + index + 1
			a3 << matrix[k,l].to_i

			#diagonal ascending
			k = i + index + 1
			l = j - index + 1
			a4 << matrix[k,l].to_i
		end
		check(a1)
			a1.clear
		check(a2)
			a2.clear
		check(a3)
			a3.clear
		check(a4)
			a4.clear
		j += 1
	end
	i += 1
	j = 0
end

p @sum