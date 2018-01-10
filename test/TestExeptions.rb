require 'test/unit'
require_relative '../lib/OwnExeption'

class TestExeptions < Test::Unit::TestCase
  def test_direct_exeption
    assert_raise RuntimeError do()
      raise "WTF"
    end
    assert_raise ArgumentError do()
      raise ArgumentError, "WTF"
    end
    assert_raise OwnExeption do()
      raise OwnExeption, "WTF"
    end
  end
  #todo
#  begin  
#    # -  raise ArgumentError, "oh noo"
#  rescue OneTypeOfException  
#    # -  
#  rescue AnotherTypeOfException  
#    # -  
#  else  
#    # Other exceptions  
#  end 
end