class Button(label_text, x, y, foreground_color, is_dark_mode)
  def initialize
    @label_text = label_text
    @x = x
    @y = y
    @foreground_color = foreground_color
    @is_dark_mode = is_dark_mode
  end

  def paint(theme_color)
    paint(label_text, x, y, foreground_color, theme_color)
  end
end

def draw_button(button)
  if button.is_dark_mode
    # darken foreground color for dark mode
    button.paint('#111111')
  else
    # lighten foreground color for non-dark mode
    button.paint('#E0E0E0')
  end
end
