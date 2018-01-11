require_relative 'dummyParentClass' #file name

class DummyClass < DummyParentClass # class name
  def initialize(value)
    @memberVar = 'init-'+value
  end

  #--------------------------------------------------------------------------
  def getInitial
    return @memberVar
  end

  #--------------------------------------------------------------------------
  def echoDef (value)
    return value
  end

  #--------------------------------------------------------------------------
  def autoReturnLastStatement
    dummy = 'This is like perl'
  end

  #--------------------------------------------------------------------------
  def askDad(question)
    answer = super(question)
    if (answer == 'No! You must not')
      return askMum(question)
    else
      return answer
    end
  end
end
