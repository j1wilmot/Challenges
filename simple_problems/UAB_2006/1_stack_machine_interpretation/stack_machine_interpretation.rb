class Interpreter

	def initialize()
		@stack = []
		@running = true
	end

	def push(num)
		@stack.push(num)
	end
	
	def add()
		val1 = @stack.pop
		val2 = @stack.pop
		sum = val1 + val2
		@stack.push sum
	end
	
	def sub()
		val1 = @stack.pop
		val2 = @stack.pop
		total = val1 - val2
		@stack.push total
	end

	def mul()
		val1 = @stack.pop
		val2 = @stack.pop
		total = val1 * val2
		@stack.push total
	end

	def div()
		val1 = @stack.pop
		val2 = @stack.pop
		total = val1 / val2
		@stack.push total
	end

	def result()
		result = @stack.pop
		print "=> #{result}"
		@running = false
	end

	def running?()
		@running
	end

	def process(command)
		case command
		when "A"
			add
		when "S"
			sub
		when "M"
			mul
		when "D"
			div
		else
			# is a push command
			
	end

	def start()
		while running?
			print "Enter a command: "
			command = gets().chomp
			process(command)
		end
	end

end

Interpreter.new.start
