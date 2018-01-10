require 'test/unit'

require_relative '../lib/DummyClass'

class TestDummyClass < Test::Unit::TestCase
  def test_constuctor_data
    dummyClass = DummyClass.new('myData')
    dummyClass.getInitial()
    assert_equal('init-myData' ,dummyClass.getInitial())
  end

  def test_callEcho
    dummyClass = DummyClass.new('something')
    assert_equal('Hallo Ruby',dummyClass.echoDef('Hallo Ruby'))
  end

  def test_testAutoReturn
    dummyClass = DummyClass.new('something')
    assert_equal('This is like perl',dummyClass.autoReturnLastStatement())
  end

  def test_inheritance_and_override
    dummyClass = DummyClass.new('something')
    assert_equal('Dad said. Yes, you can have: \'more carrots\'',dummyClass.askDad('more carrots'))
    assert_equal('Mum said. Yes, you can have: \'more sweets\'',dummyClass.askDad('more sweets'))
  end

  def test_call_privateMethod_and_error_assert
    dummyClass = DummyClass.new('something')
    assert_raise NoMethodError do
      dummyClass.messageBuilder()
    end
  end
  def test_getClassName
    dummyClass = DummyClass.new('something')
    assert_equal(DummyClass,dummyClass.class)
    assert_equal('DummyClass',dummyClass.class.name)
  end
end