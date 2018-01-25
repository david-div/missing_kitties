require 'httparty'

class Directions
  include HTTParty
  base_uri 'which-technical-exercise.herokuapp.com'

  def get_data
    self.class.get('/api/d.divilly@gmail.com/directions')
  end

  def parse_data
    get_data.parsed_response['directions']
  end


end

directions = Directions.new
p directions.get_data
