file      = File.open("numbers.txt")
contents  = file.read.split(/\n/)

sum = 0
contents.each do |f|
	sum += f.to_i
end

p sum.to_s.slice(0,10).to_i