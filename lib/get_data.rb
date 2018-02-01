require 'httparty'

class GetData
  include HTTParty
  base_uri 'which-technical-exercise.herokuapp.com'

  def directions
    dir = self.class.get('/api/d.divilly@gmail.com/directions')
    dir.parsed_response['directions']
  end

  def parse_data
  end
end

get_data = GetData.new
p get_data.directions
