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
#--------------------------------------------------------------------------
  def test_condition
    assert_equal('In if',condition('if'))
    assert_equal('In elsif',condition('elsif'))
    assert_equal('In else',condition('something'))
  end
#--------------------------------------------------------------------------
  def test_array_condition
    array = ['one','two','three']
    assert_boolean(array.include?('two'))
    assert_false(array.include?('zwei'))
  end
#--------------------------------------------------------------------------
  def test_loop_I
    array = ['one','two','three']
    collector = ''
    for element in array
      collector += element
    end
    assert_equal('onetwothree',collector)
  end
#--------------------------------------------------------------------------
  def test_loop_II
    hash = { :autoquoteKey => 1, :'two' => 2 }
    merge = ''
    for key, value in hash
      merge += key.to_s + value.to_s
    end
    assert_equal('autoquoteKey1two2',merge)
  end
#--------------------------------------------------------------------------
  def test_loop_III
    range = 1..5
    factorial = 1
    for i in range
      factorial *= i
    end
    assert_equal(120,factorial)
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