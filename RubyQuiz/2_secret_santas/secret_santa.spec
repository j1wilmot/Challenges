require "./secret_santa"
require "test/unit"

class TestSecretSanta < Test::Unit::TestCase

	def test_parse_name
		line = "Luke Skywalker <luke@example.com>\n"
		user = parse_user(line)
		assert_equal("Luke", user.firstname)
		assert_equal("Skywalker", user.lastname)
		assert_equal("luke@example.com", user.email)
	end
end

