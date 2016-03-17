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

#6 test
result = remove_numbers("sha99wn")
assert_equal("shawn", result, "failure")

#7 test
result = remove_numbers("8shawn123")
assert_equal("shawn", result, "failure")

#8 test
result = capitalize_every_other("shawn")
assert_equal("ShAwN", result, "failure")

#9 test
result = capitalize_every_other("landon")
assert_equal("LaNdOn", result, "failure")

#10 test
result = add_characters("shawn")
assert_equal("xX_shawn_Xx", result, "failure")
