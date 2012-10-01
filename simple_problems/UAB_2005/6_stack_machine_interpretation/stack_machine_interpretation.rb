class Interpreter

	@stack = []

	def push(num)
		@stack.push(num)
	end

	def result()
		return "test"
	end

	def interp.running?()
		return false;

end


interp = Interpreter.new
print "Enter virtual machine commands: "
while interp.running?
	command = gets().chomp
	interp.process(command)
end

print "=> #{interp.result()}"
