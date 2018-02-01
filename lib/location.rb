class Location
  attr_reader :dx, :dy, :dir_with_degrees

  def initialize(dir_with_degrees = [])
    @dx = 0
    @dy = 0
    @dir_with_degrees = dir_with_degrees
  end

  def return_coordinates
    update_coordinates
    [@dx,@dy]
  end


  def update_coordinates
    dir_with_degrees.each do |dir, deg|
      dir == 'forward' &&
      case deg
      when   0 then @dy += 1
      when  90 then @dx += 1
      when 180 then @dy -= 1
      when 270 then @dx -= 1
      end
    end
  end

end

full_array = %w[
  forward
  right
  forward
  forward
  forward
  left
  forward
  forward
  left
  right
  forward
  right
  forward
  forward
  right
  forward
  forward
  left
]

array = [
        ['forward', 0],
        ['right', 90]
      ]

location = Location.new(array)
location.update_coordinates
p location.dy
