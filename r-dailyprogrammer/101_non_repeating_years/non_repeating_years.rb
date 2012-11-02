# TODO 
# check inputs
# add tests
# add usage
# Bonus: Compute the longest run of years of repeated digits and the longest run of years of non-repeated digits for [1000, 2013].	
require 'set'

# start year should be before end year, both should be valid years
start_year = Integer ARGV[0]
end_year = Integer ARGV[1]

# check if any digits in year are duplicated
# e.g. 1990 has duplicate 9s
def has_duplicate(str)
	set = Set.new
	str.chars do |char|
		return true if set.include? char
		set << char
	end
	false
end
years = (start_year..end_year).select { |year| !has_duplicate(year.to_s) }
puts years.join(", ")
