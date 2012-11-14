=begin
filename = ARGV[0]
abort("Please provide a filename") if filename.nil?



def count_words(document)
	document.split(" ").reduce(Hash.new(0)) { |hash, word| hash[word] += 1 and hash }.sort_by { |key, val| [-val, -key.length] }
end

count = count_words(File.read(filename))

puts "Word counts for #{filename}"
count.sort_by { |key, val| [-val, -key.length] }.each { |a| puts "#{a[0]} : #{a[1]}" }
=end

`curl -s www.gutenberg.org/cache/epub/5200/pg5200.txt`.scan(/[\w-]+/).reduce(Hash.new 0) { |h, w| h[w] += 1 and h }.sort_by { |v| -v[1] }.take(10).each { |p| puts p * ' ' }
