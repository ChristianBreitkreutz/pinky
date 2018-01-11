class DummyParentClass
  def askMum(question)
    return 'Mum said. ' +messageBuilder(question)
  end

  #--------------------------------------------------------------------------
  def askDad(question)
    if(question.match('sweet'))
      return 'No! You must not'
    else
      return 'Dad said. ' +messageBuilder(question)
    end
  end

  #--------------------------------------------------------------------------
  private
  def messageBuilder(question)
    return 'Yes, you can have: \''+ question << "'"
  end
end