
# return number of days the powerplant is operational
def days_offline(days_running)
	(0..days_running).to_a.select { |i| i % 100 != 0 && i % 14 != 0 && i % 3 != 0 }.size
end

# should be 7 (3 days removed because of maintenance every 3rd day)
puts days_offline(10)


