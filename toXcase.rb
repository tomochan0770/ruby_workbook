def serchWords(str)
	for i in 0..str.length
		if (str[i] == '_')
			return 1
		end
		if (str[i] == '-')
			return 2
		end
	end
end

def splitWords(str)
	tmp = []
	case serchWords(str)
	when 1 then
		tmp = str.split('_')
	when 2 then 
		tmp = str.split('-')
	else 
		return nil
	end
	return tmp
end

def toChainCase(str)
	ret = nil
	array = splitWords(str)
	for i in 0..array.length - 1
		if (i == 0)
			ret = array[0]
		else
			ret = "#{ret}-#{array[i]}"
		end
	end
	p ret
end

def toSnakeCase(str)
	ret = nil
	array = splitWords(str)
	for i in 0..array.length - 1
		if (i == 0)
			ret = array[0]
		else
			ret = "#{ret}_#{array[i]}"
		end
	end
	p ret
end

toChainCase('aaa_bbb_ccc')
toSnakeCase('aaa_bbb_ccc')