class Solitaire

	attr_reader :msg

	def	initialize(msg)
		@msg = msg
	end

	def cipher
		cipher = discardNonAlpha(@msg)
		cipher = groupInto5Chars(cipher)
		cipher
	end

	def groupInto5Chars(msg)
		counter = 0
		result = ""
		msg.split('').each do |c|
			if (counter > 4)
				counter = 0
				result << " "
			end
			result << c
			counter += 1
		end
		if (counter < 5)
			(counter..4).each do |c|
				result << "X"
			end
		end
		result
	end

	def discardNonAlpha(msg)
		lower = ('a'..'z').to_a
		upper = ('A'..'Z').to_a
		newmsg = ""
		msg.split('').each do |c|
				newmsg << c if lower.include?(c) || upper.include?(c)
		end
		newmsg.to_s.upcase!
	end

end
