require_relative '../lib/name_generator.rb'
require "test/unit/assertions"
include Test::Unit::Assertions

# Define whatever methods you need first

# Now run your actual tests, making sure to do output as necessary




#second test
result = remove_punctuation(" shawn")
assert_equal("shawn", result)

#third test
result = remove_punctuation("sh&awn")
assert_equal("shawn", result)

#fourth test 
result = remove_punctuation("sh\nawn")
assert_equal("shawn", result)

#fifth test 
result = remove_punctuation("shawn ")
assert_equal("shawn", result)

#6 test
result = remove_numbers("sha99wn")
assert_equal("shawn", result)

#7 test
result = remove_numbers("8shawn123")
assert_equal("shawn", result)

#8 test
result = capitalize_every_other("shawn")
assert_equal("ShAwN", result)

#9 test
result = capitalize_every_other("landon")
assert_equal("LaNdOn", result)

#10 test
result = add_characters_if_valid("shawn")
assert_equal("xX_shawn_Xx", result)
