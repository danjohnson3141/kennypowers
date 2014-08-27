class Player
  def initialize(window)
    @window = window
    @icon = Gosu::Image.new(@window, "kennypowers.png", true)
    @x = 0
    @y = 0
    @explosion = Gosu::Image.new(@window, "explosion.png", true)
    @exploded = false
  end

  def move_left
    @x -= 1
    @x = 0 if @x < 0
  end

  def move_right
    @x += 1
    @x = @window.width-50 if @x > @window.width-50
  end

  def move_up
    @y -= 1
    @y = 0 if @y < 0
  end

  def move_down
    @y += 1
    @y = @window.height-50 if @y > @window.height-50
  end

  def draw
    if @exploded
      @explosion.draw(@x, @y, 4)
    else
      @icon.draw(@x,@y,1)
    end
  end

  def hit_by?(bullet)
    if Gosu::distance(bullet.x, bullet.y, @x, @y) < 20
      @exploded = true
    end
  end
end