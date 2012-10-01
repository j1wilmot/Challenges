filename = ARGV.first
script = $0

puts "We're going to erase #{filename}"
puts "If you don't want that then hit CTRL-C"
puts "If you do want that hit return"

print "? "

STDIN.gets

puts "opening the file"
target = File.open(filename, 'w')

puts "truncating the file..."
target.truncate(target.size)

puts "Now I'm going to ask you for three lines"

print "line 1: "; uine1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file"

format = "%s\n%s\n%s\n"
target.write(format % [line1, line2, line3])

puts "And finally we'll close the file"
target.close()
