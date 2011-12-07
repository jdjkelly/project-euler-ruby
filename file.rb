f = []
lettersorted = []
h = []
scoresorted = []
total = []

file = File.open("names.txt")

contents = file.read
splitcontents = contents.split(/\W+/) 
splitcontents.each do |this|
   	f.push(this)
end

alphasorted = f.sort

alphasorted.each do |name|
	h = []
	lettersorted = name.split(//)
	lettersorted.each do |letter|
		
		count = (letter.ord).to_i - 64
		h.push(count)
		#puts h
	end
	i = h.inject(:+)
	scoresorted << i
end

newalphasorted = f.sort


count = 0
scoresorted.each do |score|
	x = count.to_i
	y = score.to_i
	z = x * y
	total << z
	count += 1
	puts z
end

result = total.inject(:+)

puts result