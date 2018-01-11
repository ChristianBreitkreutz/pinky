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
    assert_equal('In if' , condition('if'))
    assert_equal('In elsif', condition('elsif'))
    assert_equal('In else', condition('something'))
  end

  #--------------------------------------------------------------------------
  def test_Array
    array = ['one','two','three']
    assert_equal(3, array.length())
    assert_equal('two', array[1])

    array.push('four')
    assert_equal(4, array.length())
    assert_equal('four', array[3])

    array.shift()
    assert_equal(3, array.length())
    assert_equal('two', array[0])

    array.pop()
    assert_equal(2, array.length())
    assert_equal('three', array[1])

    assert_equal(['-two-', '-three-'], array.collect {|element| '-' + element + '-' })
  end
  #--------------------------------------------------------------------------
  def test_hash
    hash = { :one => 'Eins', 'two' => 2 }
    assert_equal('Eins', hash[:one], 'symbol use failed')
    assert_equal(2, hash['two'], 'string use failed')
    assert_equal([:one, 'two'], hash.keys())
    assert_equal(['Eins', 2], hash.values())
    assert_equal(2, hash.length())
    assert_boolean(hash.has_value?(2))
    assert_boolean(hash.has_value?(2))
    hash2 = {:one => 'yksi', :three => 'drei'}
    hash = hash.merge(hash2)
    assert_equal({:one => 'yksi', 'two' => 2, :three => 'drei'}, hash)
    hash.delete(:three)
    assert_equal({:one => 'yksi', 'two' => 2}, hash)
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