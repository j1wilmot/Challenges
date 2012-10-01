#! /usr/bin/env ruby

input_file = ARGV[0]

def print_all(file)
	puts file.read()
end

def rewind(file)
	file.seek(0, IO::SEEK_SET)
end

def print_a_line(line_count, file)
	puts "#{line_count} #{file.readline()}"
end

puts "First lets print the whole file:"
puts

current_file = File.open(input_file)
print_all(current_file)

puts
puts "Now lets rewind"

rewind(current_file)

puts "Let's print out 3 lines"
[1,2,3].each do |line|
	print_a_line(line, current_file)
end



