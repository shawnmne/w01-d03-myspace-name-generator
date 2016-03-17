require_relative '../lib/name_generator.rb'
require_relative "test_helper.rb"
#require "test/unit/assertions"
#include Test::Unit::Assertions

class NameGeneratorTest < Minitest::Test

def test_name_generator
result = true
assert(result,"this should have not failed")
end

#first test
def test_lowercase_name
result = lowercase_name("ShawnMichaUD")
assert_equal("shawnmichaud", result, "failure")
end

end