#! /usr/bin/env ruby
print "Enter binary number: "
binary = gets.chomp

total = 0

length = binary.size - 1
length.downto(0) do |i|
	char = binary[i]
	num = Integer(char)
	total += num * (2 ** i)
end

puts total
