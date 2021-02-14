def rotate(arr)
  #四隅
  tmp = arr[0][0]
  arr[0][0] = arr[0][2]
  arr[0][2] = arr[2][2]
  arr[2][2] = arr[2][0]
  arr[2][0] = tmp
  #真ん中
  tmp = arr[0][1]
  arr[0][1] = arr[1][2]
  arr[1][2] = arr[2][1]
  arr[2][1] = arr[1][0]
  arr[1][0] = tmp
  return arr
end

rect = [
  [6, 1, 8],
  [7, 5, 3],
  [2, 9, 4],
]

for i in 0..4
  puts "---"
  for j in 0..rect.length - 1
    p rect[j]
  end
  rect = rotate(rect)
end
