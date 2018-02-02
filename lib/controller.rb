require_relative 'get_data'
require_relative 'location'
require_relative 'directions'

# get data is passed to Directions
# directions is passed to location
# returns the locaiton coordinates
# it's then passed back to get data
# get request is made but with the location url
# coordinates are passed in

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


controller = Controller.new
p controller.confirm_location

#
# then when these are passed, pass in ClassName.new in the method
# need to be able to psss in a simple array
