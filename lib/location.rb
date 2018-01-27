class Location

  attr_reader :curr_dir, :dx, :dy, :directions

  def initialize(directions = [])
    @curr_dir = 0
    @dx = 0
    @dy = 0
    @directions = directions
  end

  def update_curr_dir
    @directions.each do | dir |
      dir == 'right' ? @curr_dir += 90 : @curr_dir -= 90
      degree_update
    end
  end

  def degree_update
    @curr_dir = 0 if @curr_dir === 360
  end

end
