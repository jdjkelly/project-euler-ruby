f = []
lettersorted = []
h = []

file = File.open("names.txt")
	
contents = file.read
contents.split(/[,\s]+/) do |this|
   	f << this
end



alphasorted = f.sort

alphasorted.each do |name|
	lettersorted = name.split(//)
	p lettersorted
	lettersorted.each do |letter|
		count = (letter.ord)
		h << count
		puts h
	end
	i = h.inject(:+)
	puts i

end