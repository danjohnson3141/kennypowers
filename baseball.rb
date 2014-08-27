class Baseball
  attr_reader :x, :y

  def initialize(window)
    @window = window
    @icon = Gosu::Image.new(@window, 'baseball.png', true)
    @y = 0
    @y_dir = 5
    @x_dir = 4
    @x = rand(@window.width)
  end

  def update
    y_rand = [*1..10].sample
    x_rand = [*1..10].sample
    @y += @y_dir
    @x += @x_dir
    
    
    @y_dir = y_rand * -1 if @y >= @window.height
    @x_dir = x_rand * -1 if @x >= @window.width

    @y_dir = y_rand if @y <= 10
    @x_dir = x_rand if @x <= 10
    
    # @x = rand(@window.width)    
  end

  def draw
    @icon.draw(@x, @y, 3)
  end
end