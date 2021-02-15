class CalNum
	def initialize(num, div)
		@num = num
		@div = div
	end
	def division()
		ret = 0
		while @div * ret < @num do
			ret += 1
		end
		if @num < @div * ret
			ret -= 1
		end
		return ret
	end
	def remainder()
		i = 0
		ret = 0
		while @div * i < @num do
			i += 1
		end
		if @num != @div * i
			i -= 1
			ret = @num - (@div * i)
		end
		return ret
	end
end

cal = CalNum.new(120, 11)
p cal.division
p cal.remainder