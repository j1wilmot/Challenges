def difference num1, num2
  (num1 - num2).abs
end

def get_k
  first_line = $stdin.readline
  Integer first_line.split(' ')[1]
end

def get_nums
  nums = $stdin.readline.split(' ')
  nums.map { |num| Integer num }
end

# N^2 -- loop through all combinations
# of pairs, checking if the difference
# between each pair is == k
def brute_force(k, nums)
  count = 0
  while num1 = nums.shift
    nums.each do |num2|
      count += 1 if difference(num1, num2) == k
    end
  end
  puts count
end

# sort our nums. For each num
# we move to the right until
# we find a num whose difference
# with our first num is greater
# than k. Because our nums are
# sorted we know that no later
# number will meet our criteria
# so we can continue to our next
# iteration.
def faster(k, nums)
  count = 0
  nums.sort!
  while num1 = nums.shift
    nums.each do |num2|
      diff = difference(num1, num2)
      count += 1 if diff == k
      break if diff > k
    end
  end
  puts count
end

k = get_k
nums = get_nums
#brute_force k, nums
faster k, nums
