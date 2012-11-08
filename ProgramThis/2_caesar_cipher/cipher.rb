require './caesar.rb'

print "Enter a string: "
input = gets.strip

print "How much do you want to shift? "
shift = Integer(gets.strip)

cipher = Caesar.shift(input, shift)
puts "Cipher: #{cipher}"
