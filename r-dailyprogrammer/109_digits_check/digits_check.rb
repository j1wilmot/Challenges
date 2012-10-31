=begin
Two main approaches:
1) compare string to a regex for all digits, match should be full length of string
2) iterate through all chars in string, if any of the chars are not a digit, return false

makes sense to use approach 2 as we can stop processing as soon as we encounter a non-digit
=end

# a ruby solution from reddit
def digits_check2(str)
	str.chars.all? { |char| ('0'..'9').include? char }
end

def digits_check(str)
	# would be better to use a set here
	# so that include? would run in constant time
	digits = %w{ 0 1 2 3 4 5 6 7 8 9 }
	str.chars do |char|
		if !digits.include? char
			return false
		end
	end
	true
	# may be better to do something like (0..9).all
end

def digits_check_regex(str)
	match = /\d+/.match(str)
	return false if match.nil?
	match[0].length == str.length
end
