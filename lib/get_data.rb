require 'httparty'

EMAIL = 'd.divilly@gmail.com'.freeze

class GetData
  include HTTParty
  base_uri 'which-technical-exercise.herokuapp.com'

  def directions
    dir = self.class.get("/api/#{EMAIL}/directions")
    dir.parsed_response['directions']
  end

  def location(x, y)
    loc = self.class.get("/api/#{EMAIL}/location/#{x}/#{y}")
    loc.parsed_response['message']
  end
end
