def fibonacci(num_a, num_b)
	total = num_a + num_b
	puts num_b
	if total == 6765
		return total
	end
	fibonacci(num_b, total)
end

p fibonacci(0, 1)