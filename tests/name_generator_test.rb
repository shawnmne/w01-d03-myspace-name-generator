require_relative '../lib/name_generator.rb'
require "test/unit/assertions"
include Test::Unit::Assertions

# Define whatever methods you need first

# Now run your actual tests, making sure to do output as necessary


#first test
result = lowercase_name("ShawnMichaUD")
assert_equal("shawnmichaud", result, "failure")

#second test
result = remove_punctuation(" shawn")
assert_equal("shawn", result, "failure")

#third test
result = remove_punctuation("sh&awn")
assert_equal("shawn", result, "failure")

#fourth test 
result = remove_punctuation("sh\nawn")
assert_equal("shawn", result, "failure")

#fifth test 
result = remove_punctuation("shawn ")
assert_equal("shawn", result, "failure")
