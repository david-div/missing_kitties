require 'httparty'

class GetData
  include HTTParty
  base_uri 'which-technical-exercise.herokuapp.com'

  def directions
    response = self.class.get('/api/d.divilly@gmail.com/directions')
    response.parsed_response['directions']
  end

end

get_data = GetData.new
p get_data.directions
