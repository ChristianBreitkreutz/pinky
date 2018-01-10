require 'test/unit'

class BasicStuff < Test::Unit::TestCase
  def test_stringConcat
    ruby = 'Ruby'
    assert_equal('Hello Ruby', 'Hello '+ ruby, '+ concatenation went wrong')
    assert_equal('Hello Ruby', "Hello #{ruby}", 'double quote #{} concatenation went wrong')
    assert_equal('Hello Ruby', 'Hello ' << ruby, '<< concatenation went wrong')
    assert_equal('Hello Ruby, how are you?',
      "Hello #{ruby}" + ', how are' << ' you?',
      'concatenation mix went wrong')
  end

  def test_condition
    assert_equal('In if',condition('if'))
    assert_equal('In elsif',condition('elsif'))
    assert_equal('In else',condition('something'))
  end

#--------------------------------------------------------------------------
# helpers  
#--------------------------------------------------------------------------
  def condition(value)
    if(value == 'if')
        return 'In if'
    elsif (value == 'elsif')
        return 'In elsif'
    else
        return 'In else'
    end
  end
end