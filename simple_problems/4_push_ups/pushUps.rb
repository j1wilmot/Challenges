print "Enter final score: "
num = Integer(gets)

tds = num / 7
total = 0
tds.downto(1) do |i|
	total += i * 7
end

puts "Push ups: #{total}"
	
