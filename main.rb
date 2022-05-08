class Button(label_text, x, y, foreground_color, is_dark_mode)

  attr_reader :label_text, :x, :y, :foreground_color, :is_dark_mode

  def initialize
    @label_text = label_text
    @x = x
    @y = y
    @foreground_color = foreground_color
    @is_dark_mode = is_dark_mode
  end

  def paint
    paint(label_text, x, y, foreground_color, theme_color, is_dark_mode ? '#111111' : '#E0E0E0')
  end
end

def draw_button(button)
  button.paint
end
