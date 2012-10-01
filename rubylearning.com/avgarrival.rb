def average_time_of_day(*times)
	total = 0
	num_entries = times.size

	times.each do |t|
		puts t
		seconds = parse_time(t)
		total += seconds
	end
	avg_time = total / num_entries
end

# Returns int time representation
# from a string representation in
# format "(hour):(minute)(am/pm)
# e.g. "6:41am", "11:51pm", etc.
def parse_time(time)
	puts time
	split_time = time.split(":")
	hour = split_time[0]
	min = split_time[1][0..1]
	am_pm = split_time[1][-2..-1]	
	if am_pm == "pm"
		min += 12
	end
	time = Time.new(2000, "jan", 1, hour, min) 
	time.to_i
end

