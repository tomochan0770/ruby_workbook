def isBingo(arr, val)
	def isFilledArray(arr, val)
		arr.each do |ar|
			if (ar != val)
				return false
			end
		end
		return true
	end
	# 縦ラインチェック
	for i in 0..arr.length - 1
		vertical = []
		for j in 0..arr[i].length - 1
			vertical[j] = arr[i][j]
		end
		if (isFilledArray(vertical, val))
			return true
		end
	end
	# 横ラインチェック
	for i in 0..arr.length - 1
		horizontal = []
		horizontal = arr[i]
		if (isFilledArray(horizontal, val))
			return true
		end
	end
	# ななめ（左から右）
	diagonal_r = []
	for i in 0..arr.length - 1
		diagonal_r[i] = arr[i][i]
	end
	if (isFilledArray(diagonal_r, val))
		return true
	end
	# ななめ（右から左）
	diagonal_l = []
	for i in 0..arr[i].length - 1
		j = arr.length - 1
		diagonal_l[i] = arr[i][j - i]
	end
	if (isFilledArray(diagonal_l, val))
		return true
	end
	return false
end

arr0 = [
  [0,0,0],
  [0,0,0],
  [0,0,0],
]
arr1 = [
  [0,0,0],
  [1,1,1],
  [0,0,0],
]
arr2 = [
  [0,0,1],
  [0,0,1],
  [0,0,1],
]
arr3 = [
  [1,0,0],
  [0,1,0],
  [0,0,1],
]
arr4 = [
  [0,0,1],
  [0,1,0],
  [1,0,0],
]

puts("false = #{isBingo(arr0, 1)}")
puts("false = #{isBingo(arr0, 1)}")
puts("true = #{isBingo(arr1, 1)}")
puts("false = #{isBingo(arr1, -1)}")
puts("true = #{isBingo(arr2, 1)}")
puts("false = #{isBingo(arr2, -1)}")
puts("true = #{isBingo(arr3, 1)}")
puts("false = #{isBingo(arr3, -1)}")
puts("true = #{isBingo(arr4, 1)}")
puts("false = #{isBingo(arr4, -1)}")