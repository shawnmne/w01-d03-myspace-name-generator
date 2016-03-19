require_relative '../lib/name_generator.rb'
require_relative "test_helper.rb"
#require "test/unit/assertions"
#include Test::Unit::Assertions

class NameGeneratorTest < Minitest::Test

# Test to make sure a space is removed from front of id
def test_remove_space_pre_id_space
result = remove_punctuation(" shawn")
assert_equal("shawn", result)
end

# Test to make sure a space is removed from middle of id
def test_remove_space_middle_of_id_space
result = remove_punctuation("sha wn")
assert_equal("shawn", result)
end

# Test to make sure a space is removed from end of id
def test_remove_space_end_of_id_space
result = remove_punctuation("shawn")
assert_equal("shawn", result)
end

# Test to make sure a non-leter non-character is removed from id
def test_remove_punctuation_from_id
result = remove_punctuation("sh&awn")
assert_equal("shawn", result)
end




def test_name_generator
result = name_generator("SH&$3aw(,n")
assert_equal("xX_ShAwN_Xx", result)
end



end