class ButtonComponentPreview < ViewComponent::Preview
  layout "preview"

  # 🎉 Button playground! 🎉
  # -----------------------
  # You can use the controls in the 'Params' section
  # to set button property values on the fly.
  #
  # @param text
  # @param theme [Symbol] select [primary, secondary, danger]
  # @param arrow
  def playground(text: "Click me", theme: :danger, arrow: false)
    render ButtonComponent.new(theme: theme, arrow: arrow) do
      text
    end
  end

  # @!group Themes

  # @label Primary (default)
  def with_default_theme
    render ButtonComponent.new do
      "A primary action"
    end
  end

  # @label Outline
  def with_outline_theme
    render ButtonComponent.new(theme: :outline) do
      "A less important action"
    end
  end

  # @label Danger
  def with_danger_theme
    render ButtonComponent.new(theme: :danger) do
      "A dangerous action"
    end
  end

  # @!endgroup
end