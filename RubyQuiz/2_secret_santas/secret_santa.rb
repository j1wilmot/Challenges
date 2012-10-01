class User
	attr_reader :firstname, :lastname, :email

	def initialize(firstname, lastname, email)
		@firstname = firstname
		@lastname = lastname
		@email = email
	end

end

def parse_user(line)
	parts = line.split(" ")
	firstname = parts[0]
	lastname = parts[1]
	# remove enclosing email brackets <>
	# email = /<(.+?)>/.match(parts[2])[1]
	raw_email = parts[2]
	email = raw_email[(1..-2)]
	User.new(firstname, lastname, email)
end
