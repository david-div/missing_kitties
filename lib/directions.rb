class Directions
  attr_reader :curr_dir, :directions, :dir_with_degrees

  def initialize(directions = [])
    @curr_dir = 0
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
    @curr_dir =   0 if curr_dir == 360
    @curr_dir = 270 if curr_dir == -90
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

 direction = Directions.new(full_array)
 direction.update_curr_dir
