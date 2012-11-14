radius = Integer(ARGV[0])
if radius.nil? || radius < 1
	abort("Need to provide a radius greater than 0")
end

CHAR = "#"

0.upto(radius) do |i|
	puts " " * (radius - i) + CHAR	
end

radius.downto(0) do |i|

end
