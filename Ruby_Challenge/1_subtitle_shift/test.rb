class Sample
	attr_reader :num

	def initialize(aNum)
		@num = aNum
	end
end

def test
	puts "test"
end

sample = Sample.new(4)

puts sample
puts sample.num
test()
