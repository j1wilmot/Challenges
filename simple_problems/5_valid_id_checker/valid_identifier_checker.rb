print "Enter id: "
id = gets()

def valid(id) do
	if id[0] 
		return false
	else
		return true
	end
end

if valid(id)
	puts "#{id} is a valid identifier"
else
	puts "#{id} is not a valid identifier"
end
