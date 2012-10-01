from_file, to_file = ARGV
puts "Copying the text from #{from_file} to #{to_file}..."

puts "Does #{to_file} exist? #{File.exists? to_file}"
puts "Hit a key to copy files..."
STDIN.gets

File.write(to_file, File.read(from_file))

puts "copy complete"




