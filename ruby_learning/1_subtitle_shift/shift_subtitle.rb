class Shift
	attr_reader :time
	
	def initialize(time)
		@time = time
	end

	def shift_forward(offset)
		# parse initial time
		times = @time.split(" --> ");
		time_a = convert_to_seconds(times[0])
		time_b = convert_to_seconds(times[1])

		# shift times forward
		time_a += offset
		time_b += offset

		# output new results	
		time_a_string = convert_from_seconds(time_a)
		time_b_string = convert_from_seconds(time_b)
		"#{time_a_string} --> #{time_b_string}"
	end

	def shift_backward(offset)
		# parse initial time
		times = @time.split(" --> ");
		time_a = convert_to_seconds(times[0])
		time_b = convert_to_seconds(times[1])

		# shift times forward
		time_a -= offset
		time_b -= offset

		# output new results	
		time_a_string = convert_from_seconds(time_a)
		time_b_string = convert_from_seconds(time_b)
		"#{time_a_string} --> #{time_b_string}"
	end

	def convert_to_seconds(time_string)
		fields = time_string.split(":")
		hours = fields[0]
		mins = fields[1]
		secs = fields[2].split(",")[0]
		millis = fields[2].split(",")[1]

		time =  (Float(hours) * 3600) + 
				(Float(mins) * 60) + 
				Float(secs) + 
				(Float(millis) / 1000)
	end

	def convert_from_seconds(seconds)
		hours = (seconds / 3600).floor
		seconds -= hours * 3600

		mins = (seconds / 60).floor
		seconds -= mins * 60

		secs = seconds.floor
		millis = ((seconds % 1) * 1000).round

		"%02d:%02d:%02d,%03d" % [hours, mins, secs, millis]
	end
end

require 'optparse'

options = {}
optparse = OptionParser.new do |opts|
	opts.banner = "Usage: shift_subtitle.rb [options]"

	# Add by default
	options[:operation] = "ADD"
	opts.on("-o", "--operation OPERATION", "Perform operation") do |o|
		abort("Bad operator") unless o == "ADD" || o == "SUB"
		options[:operation] = o
	end
	
	opts.on(:REQUIRED, "-t", "--time TIME", "Time amount to shift by") do |t|
		options[:time] = t
	end

end.parse!

required = [:time]
missing = required.select { |r| !options.include?(r) }
unless missing.empty?
	puts "Missing required flags: #{missing.join(',')}"
	exit
end

# parse file and split into time segments
# output modified segments
