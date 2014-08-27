class Window < Gosu::Window

  def initialize
    super(300,300,false)
    @player = Player.new(self)
    @baseball = Baseball.new(self)
    @baseball1 = Baseball.new(self)
  end
  
  def draw
    @player.draw
    @baseball.draw
    @baseball1.draw
  end

  def update
    if button_down? Gosu::Button::KbLeft
      @player.move_left
    end
          
    if button_down? Gosu::Button::KbRight
      @player.move_right
    end

    if button_down? Gosu::Button::KbUp
      @player.move_up
    end
          
    if button_down? Gosu::Button::KbDown
      @player.move_down
    end
    @baseball.update
    @baseball1.update
  end
    
end