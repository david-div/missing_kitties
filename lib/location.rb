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
      next if dir == 'forward'
      dir == 'right' ? @curr_dir += 90 : @curr_dir -= 90
    end
  end




end
