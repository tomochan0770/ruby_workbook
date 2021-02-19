require "json"

userData = JSON.parse(File.read("users.json"), symbolize_names: true)

# 問題1 : スコア降順でソートして、90点以上の人だけ表示
# userData.select!{ |x| x[:score].to_i >= 90 }.sort!{ |a, b| b[:score] <=> a[:score] }

# p userData



# 問題2 : ファーストネームの重複している人数を集計し、人数降順でソートして表示
ret = {}
userData.each do |user|
	firstName = user[:name].split(' ')[1]
	if !ret.key?(firstName)
		ret.store(firstName, 1)
	else
		ret.store(firstName, ret[firstName] + 1)
	end
end
ret = ret.sort_by{ |_, v| v }.reverse.to_h

ret.each{|key, value|
	puts "#{key}:#{value}"
}



