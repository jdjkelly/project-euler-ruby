class Integer
  def factorial
    self <= 1 ? 1 : self * (self - 1).factorial
  end
end

split_nums = (100.factorial).to_s.split(//)
to_sum = []

split_nums.each do |num|
	to_sum << num.to_i
end

puts to_sum.inject(:+)
