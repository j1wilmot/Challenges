
def jug_path(target, jug1, jug2)
	# constraints
	# 1. If jug1 and jug2 are both even, we cannot reach an odd target
	# 2. If target is greater than max(jug1, jug2), we cannot reach target
	if [jug1, jug2].max < target || target < 0 || (jug1 % 2 == 0 && jug2 % 2 ==0 && target % 2 != 0)
		abort("Target is unreachable")
	end

	#TODO		


end
