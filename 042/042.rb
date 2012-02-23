# going to extend the integer class so I can call it later
class Integer	
	def triangulate()
		0.5*self*(self+1) 
	end
end

# we need to open up the file, get it into an array, make it nice and easy to work with
starting_array = Array.new
data = File.open("words.txt").collect do |line|
	starting_array << line.split(/\W+/)
end
starting_array = starting_array.flatten
starting_array.shift

# need to define a few variables
sum, length, count = 0, 0, 0

# let's find out the longest word length in the file. we'll use this to build an array of all of the possible triangle numbers.
# That way, we won't have to evaluate triangulairty after each word. We'll just checkt to see if the value is a member of the array.
starting_array.each do |i|
	if i.length > length then length = i.length end
end

# so now we know the length, let's build the array - the max number is the biggest word length * 26 (assuming all character are "z")
possible_triangles = Array.new
(1..length*26).each do |i|
	possible_triangles << i.triangulate 
end

starting_array.each do |i|
	i.split(//).each do |j|
		sum += (j[0].ord - 64)
	end
	if possible_triangles.include?(sum)
		count += 1
	end
	sum = 0
end

p count