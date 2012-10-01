#! /usr/bin/env ruby


# The 8 queen problem
# Give a way to align 8 queens such that
# no queen can take another queen.
# Queens can move horizontally, vertically
# and diagonally.

def main()
	print "Enter board configuration: "
	queen_input = gets.chomp
	queen_cols = queen_input.split(" ")
	response_template = "That input %s a valid solution to the 8 queen problem"
	if (isValid?(queen_cols))
		puts response_template % "is"
	else 
		puts response_template % "is not"
	end
end

# checks is provided queen column layout
# is a valid solution to the 8 queen problem.
def isValid?(queen_cols)
	# based on input, we know queens do not share
	# a column. We can check that no numbers are the same
	# to verify row. Then all we need to do is verify diaognals.


	# verify that input contains 8 cols
	return false if queen_cols.length != 8

	# verify that each col is unique and between 1-8
	
	
	false
end

main
