require 'test/unit'
require_relative '../lib/OwnExeption'

class Test_Exeptions < Test::Unit::TestCase
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
#--------------------------------------------------------------------------
  def test_tryCatchFinal
    assert_equal('init-ArgumentError-final',tryCatchFinal(ArgumentError))
    assert_equal('init-OwnExeption-final',tryCatchFinal(OwnExeption))
    assert_raise RuntimeError do()
      tryCatchFinal(RuntimeError)
    end
  end
#--------------------------------------------------------------------------
# helpers  
#--------------------------------------------------------------------------
  def tryCatchFinal(errorType)
    value = 'init-'
    begin  
      raise errorType
    rescue ArgumentError  
      value += 'ArgumentError-'
    rescue OwnExeption  
      value += 'OwnExeption-'
    ensure  
      value += "final"
    end
    return value
  end
end