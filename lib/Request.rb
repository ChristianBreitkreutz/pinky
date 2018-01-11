require "rubygems"
require "net/http"
require "uri"
require "json"

class Request
  Scheme = 'https'
  Authority = 'jsonplaceholder.typicode.com'
  Path = 'users';

  #--------------------------------------------------------------------------
  def getData
    response = callWebservice()
    return parseResponse(response)
  end

  #--------------------------------------------------------------------------
  private
  def callWebservice
    uri = URI("#{Scheme}://#{Authority}/#{Path}")
    return Net::HTTP.get(uri)
  end

  #--------------------------------------------------------------------------
  private
  def parseResponse(response)
    return JSON.parse(response)
  end
end

