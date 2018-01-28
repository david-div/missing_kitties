class Location
  attr_reader :curr_dir, :dx, :dy, :directions, :dir_with_degrees

  def initialize(directions = [])
    @curr_dir = 0
    @dx = 0
    @dy = 0
    @directions = directions
    @dir_with_degrees = []
  end

  def update_curr_dir
    directions.each do |dir|
      if dir == 'right'
        @curr_dir += 90
      elsif dir == 'left'
        @curr_dir -= 90
      else
        dir
      end
      degree_update
      dir_with_degrees << [dir, curr_dir]
    end
  end

  def degree_update
    @curr_dir = 0 if curr_dir == 360
    @curr_dir = 270 if curr_dir == -90
  end

  def update_coordinates
    dir_with_degrees.each do |dir, deg|
      dir == 'forward' &&
      case deg
      when   0 then @dy +=1
      when  90 then @dx += 1
      when 180 then @dy -= 1
      when 270 then @dx -= 1
      end
    end
  end
end

array = %w[
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

location = Location.new(array)
location.update_curr_dir
location.update_coordinates
p [location.dx, location.dy]
