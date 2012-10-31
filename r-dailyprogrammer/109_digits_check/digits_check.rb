def digits_check(str)
	# better to use a set here
	digits = %w{ 0 1 2 3 4 5 6 7 8 9 }
	str.chars do |char|
		if !digits.include? char
			return false
		end
	end
	true
end

def digits_check_regex(str)
	match = /\d+/.match(str)
	return false if match.nil?
	match[0].length == str.length
end
