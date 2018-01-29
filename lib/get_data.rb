require 'httparty'

class GetData
  include HTTParty
  base_uri 'which-technical-exercise.herokuapp.com'

  def directions
    self.class.get('/api/d.divilly@gmail.com/directions')
  end

  def parse_data
    directions.parsed_response['directions']
  end
end

get_data = GetData.new
p get_data.directions
