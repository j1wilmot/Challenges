nums = []
for i in 1..5 do
	print "Enter a number: "
	nums.push(Integer(gets()))
end

print "Enter the number to be searched: "
num = Integer(gets())

if nums.include? num
	print "WE HAZ IT!"
else
	print "Can no find"
end
