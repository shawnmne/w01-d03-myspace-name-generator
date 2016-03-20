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
def test_remove_non_letter_character_from_id
result = remove_punctuation("sh&awn")
assert_equal("shawn", result)
end

# Test to make sure a special character 
#   can be removed
def test_remove_special_characters_from_id
result = remove_punctuation("sh\nawn")
assert_equal("shawn", result)
end

# Test to make sure punctuation can be removed
def test_remove_punctuation_from_id
result = remove_punctuation("sha?wn")
assert_equal("shawn", result)	
end

# Test to remove numbers from id
def test_to_remove_numbers
result = remove_numbers("8shawn123")
assert_equal("shawn", result)
end

# Test to confirm every other letter capitalized with even number length id
def test_to_capitalize_every_other_character_with_even_id_length
result = capitalize_every_other("landon")
assert_equal("LaNdOn", result)
end

# Test to confirm every other letter capitalized with some capitalized
#    characters
def test_to_capitalize_every_other_character_with_capitalized_characters
result = capitalize_every_other("SHaWn")
assert_equal("ShAwN", result)
end

# Test to confirm every other letter capitalized with odd number length id
def test_to_capitalize_every_other_character_with_odd_id_length
result = capitalize_every_other("shawn")
assert_equal("ShAwN", result)
end

# Test to confirm characters added if valid password
def test_characters_added_to_valid_password
result = add_characters_if_valid("shawn")
assert_equal("xX_shawn_Xx", result)
end

# Test to confirm message sent to "" ID
def test_message_sent_to_invalid_ID
result = add_characters_if_valid("")
assert_equal("Inavalid ID. Please enter new ID with only lower case letters.", result)
end

# Test to confirm name generator output gives expected output for a valid input
def test_name_generator_with_valid_input
result = name_generator("SH&$3aw(,n")
assert_equal("xX_ShAwN_Xx", result)
end

# Test to confirm name generator output gives expected output for nil input
def test_name_generator_with_nil
result = name_generator("")
assert_equal("Inavalid ID. Please enter new ID with only lower case letters.", result)
end 

# Test to confirm name generator output gives expected output for invalid input
def test_name_generator_with_invalid_input
result = name_generator("89&6\n  5.,?<")
assert_equal("Inavalid ID. Please enter new ID with only lower case letters.", result)
end

end