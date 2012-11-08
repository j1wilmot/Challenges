module Caesar
	UPPER_LETTER_OFFSET = 65
	LOWER_LETTER_OFFSET = 97
	SIZE_OF_ALPHABET = 26
	LOWER = ('a'..'z').to_a
	UPPER = ('A'..'Z').to_a

	# only shift alpha characters
	# TODO better to use a shift_char function, and apply to any char that matches /[a-zA-Z]/
	# as in https://gist.github.com/1296429
	def Caesar.shift(string, shift)
		new_str = ""
		string.codepoints do |codepoint|
			if codepoint >= UPPER_LETTER_OFFSET && codepoint <= UPPER_LETTER_OFFSET + SIZE_OF_ALPHABET
				# capital letter
				char = codepoint - UPPER_LETTER_OFFSET
				actual_shift = (char + shift) % SIZE_OF_ALPHABET
				new_codepoint = UPPER_LETTER_OFFSET + actual_shift
				new_str << new_codepoint
			elsif codepoint >= LOWER_LETTER_OFFSET && codepoint <= LOWER_LETTER_OFFSET + SIZE_OF_ALPHABET
				# lower case letter
				char = codepoint - LOWER_LETTER_OFFSET
				actual_shift = (char + shift) % SIZE_OF_ALPHABET 
				new_codepoint = LOWER_LETTER_OFFSET + actual_shift
				new_str << new_codepoint
				# debug
				#puts "#{codepoint} #{char} #{actual_shift} #{new_codepoint}"
			else
				# out of alpha range, just append char unaltered
				new_str << codepoint
			end
		end
		new_str
	end

	# Alternative method: could use String.tr to implement shift
	def Caesar.shift2(string, shift)
		#replace lower letters
		lower_replace = ""
		0.upto(SIZE_OF_ALPHABET - 1).each do |i|
			actual_shift = (i + shift) % SIZE_OF_ALPHABET 
			lower_replace << LOWER_LETTER_OFFSET + actual_shift
		end
		string.tr!(LOWER.join, lower_replace)
		#replace upper letters
		upper_replace = ""
		0.upto(SIZE_OF_ALPHABET - 1).each do |i|
			actual_shift = (i + shift) % SIZE_OF_ALPHABET 
			upper_replace << UPPER_LETTER_OFFSET + actual_shift
		end
		string.tr(UPPER.join, upper_replace)
	end

end
