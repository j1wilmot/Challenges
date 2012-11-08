require './shift_subtitle.rb'

describe "shift" do
	it "shifts time forward" do
		time = "01:32:04,283 --> 01:32:07,769"
		shifter = Shift.new(time)
		offset = 2.5
		result = shifter.shift_forward(offset)
		expected = "01:32:06,783 --> 01:32:10,269"
		result.should eq(expected)
	end

	it "shifts time backward" do
		time = "01:32:04,283 --> 01:32:07,769"
		shifter = Shift.new(time)
		offset = 2.5
		result = shifter.shift_backward(offset)
		expected = "01:32:01,783 --> 01:32:05,269"
		result.should eq(expected)
	end

	it "converts from string to seconds" do
		time = "01:01:04,283"
		seconds = convert_to_seconds(time)
		seconds.should eq(3664.283)
	end

	it "converts from seconds to string" do
		seconds = 3664.283
		seconds_string = convert_from_seconds(seconds)
		seconds_string.should eq("01:01:04,283")
	end
end
