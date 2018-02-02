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

  attr_reader :data

  def initialize(data = GetData.new)
    @data = data.directions
  end

end

# full_array = %w[
#   forward
#   right
#   forward
#   forward
#   forward
#   left
#   forward
#   forward
#   left
#   right
#   forward
#   right
#   forward
#   forward
#   right
#   forward
#   forward
#   left
# ]

# Controller.new(ClassName, otherClassName)
#
# then when these are passed, pass in ClassName.new in the method
# need to be able to psss in a simple array
