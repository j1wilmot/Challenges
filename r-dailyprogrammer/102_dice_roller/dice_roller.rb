def dice_roll(dice_str)
	dice_str.scan /\d*d\d*\+|\-\d/
end


puts dice_roll("10d4+2")
