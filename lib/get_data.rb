require 'httparty'

class GetData
  include HTTParty
  base_uri 'which-technical-exercise.herokuapp.com'

  def directions
    self.class.get('/api/d.divilly@gmail.com/directions')
  end

end

get_data = GetData.new
puts get_data.directions
