#! /usr/bin/env ruby

def fact_recurse(num)
	if num > 1
		return num * fact_recurse(num - 1)
	else
		return 1
	end
end

def fact_iter(num)
	total = 1
	while num > 1
		total *= num
		num -= 1
	end
	return total
end

# Main
if ARGV.size == 0
	print "Enter a number: "
	num = Integer(gets)
else
	num = Integer(ARGV[0])
end

puts "#{num}! = #{fact_iter(num)}"
puts "#{num}! = #{fact_recurse(num)}"
