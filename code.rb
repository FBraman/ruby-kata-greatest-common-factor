#YOUR CODE GOES HERE
def greatest_common_factor(arg1, arg2)
	arg1_range = (1..arg1).to_a
	arg2_range = (1..arg2).to_a
	arg1_factors = []
	arg2_factors = []
	arg1_range.each do |x|
		if arg1 % x == 0
			arg1_factors << x
		end
	end
	arg2_range.each do |x|
		if arg2 % x == 0
			arg2_factors << x
		end
	end
	common_factors = []
	arg1_factors.each do |x|
		arg2_factors.each do |y|
			if x == y
				common_factors << x
			end
		end
	end
	puts common_factors.max
end

greatest_common_factor(9, 24)