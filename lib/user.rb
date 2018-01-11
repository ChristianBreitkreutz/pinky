require_relative 'Request'

class User
  def initialize
    request = Request.new
    @dataStore = request.getData()
  end

  #--------------------------------------------------------------------------
  def getNameById(number)
    return @dataStore[number-1]['name']
  end

  #--------------------------------------------------------------------------
  def getIdByName(name)
    for line in @dataStore
      if(line['name'] == name)
        return line['id']
      end
    end
  end
end