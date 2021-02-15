for a in 0..9
	for b in 0..9
		for c in 0..9
			cal = (10 * a + b) + (10 * c + a)
			ans = 100 * b + 10 * b + c
			if cal == ans
				p "a:#{a}, b:#{b}, c:#{c}"
			end
		end
	end
end