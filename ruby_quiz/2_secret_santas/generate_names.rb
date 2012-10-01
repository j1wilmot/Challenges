first_names = %w[fred lisa marge sandy bart charles nick chris margaret rebecca john sam phil manny pedro louis sunny]
last_names = %w[simpson newton armstrong johnson mead gonzales mansfield obama romney silverstein madoff]

num_names = 10

def random_item(array)
	rand_index = rand(0..array.length-1)
	array[rand_index]
end

class Person
	attr_reader :firstname, :lastname, :email

	def initialize(firstname, lastname, email)
		@firstname = firstname
		@lastname = lastname
		@email = email
	end

	def to_s
		"#{@firstname} #{@lastname} <#{@email}>\n"
	end

end

people = []
num_names.times do
	first_name = random_item(first_names)
	last_name = random_item(last_names)
	email = "#{first_name}.#{last_name}@example.com"
	people << Person.new(first_name, last_name, email)
end

people.each do |person|
	print person.to_s
end
