require 'test/unit'

class BasicStuff < Test::Unit::TestCase
  def test_stringConcat
    ruby = 'Ruby'
    assert_equal('Hello '+ ruby,'Hello Ruby', '+ concatenation went wrong')
    assert_equal("Hello #{ruby}",'Hello Ruby', 'double quote #{} concatenation went wrong')
    assert_equal('Hello ' << ruby,'Hello Ruby', '<< concatenation went wrong')
    assert_equal("Hello #{ruby}" + ', how are' << ' you?','Hello Ruby, how are you?', 'concatenation mix went wrong')
  end
  
  def method_name
    
  end
end