require_relative 'get_data'
require_relative 'location'
require_relative 'directions'

class Controller
  attr_reader :data, :directions, :location

  def initialize(data = GetData, directions = Directions, location = Location)
    @data = data.new
    @directions = directions
    @location = location
  end

  def confirm_location
    find_location
    data.location(find_location[0], find_location[1])
  end

  def get_directions
    directions.new(data.directions).update_directions
  end

  def find_location
    location.new(get_directions).return_coordinates
  end
end
